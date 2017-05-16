// Modify the copy program developed in Program 16.6 so that it can accept more than one source file 
// to be copied into a directory, like the standard UNIX cp com- mand. So, the command 
// $ copy copy1.m file1.m file2.m progs
// should copy the three files copy1.m, file1.m, and file2.m into the directory progs. 
// Be sure that when more than one source file is specified, the last argument is, in fact, an existing directory.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSFileManager *fm;
        NSString *dest;
        BOOL isDir;
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray *args = [proc arguments];
        NSArray *sourceFiles = [args subarrayWithRange:NSMakeRange(1, [args count]-2)];
        NSMutableArray *destFiles = [NSMutableArray arrayWithArray:sourceFiles];
        
        fm = [NSFileManager defaultManager];
        
        // Check for two arguments on the command line
        if ([args count] < 3){
            NSLog(@"Usage: %@ [files separated by space] directory", [proc processName]);
            return 1;
        }
        
        dest = [args lastObject];
        
        // Make sure the source file can be read
        for (int i = 0; i < [sourceFiles count]; ++i){
            if ([fm isReadableFileAtPath:sourceFiles[i]] == NO){
                NSLog(@"Cannot read %@", sourceFiles[i]);
                return 2;
            }
        }
        
        // See if the destination file is a directory
        // If it is, add the source to the end of the destination
        [fm fileExistsAtPath:dest isDirectory:&isDir];
        if (isDir==YES) {
            for (int i = 0; i < [sourceFiles count]; ++i){
                destFiles[i] = [dest stringByAppendingPathComponent:[sourceFiles[i] lastPathComponent]];
            }
        } else {
            NSLog(@"Last argument is not a directory!");
            return 3;
        }
        
        // Perform the copy
        for (int i = 0; i < [sourceFiles count]; ++i){
            if ([fm copyItemAtPath:sourceFiles[i] toPath:destFiles[i] error:NULL] == NO){
                NSLog(@"Copy failed!");
                return 4;
            }
        }
        
        NSLog(@"Copy of %@ to %@ succeeded!", sourceFiles, dest);
    }
    return 0;
}
