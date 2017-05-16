// Some basic directory operations

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//         NSString *fName = @"/Users/eleni/Documents/Programming/ObjC-Kochan/Ch16/Ch16/testfile";
//        NSString *new = @"/Users/eleni/Documents/Programming/ObjC-Kochan/Ch16/Ch16/newfile";
        
        NSString *dirName = @"testdir";
        NSString *path;
        NSFileManager *fm;
        NSString *newdir = @"/Users/USER/Documents/Programming/ObjC-Kochan/Ch16/Ch16/newdir";
        
        // Create an instance of the file manager
        fm = [NSFileManager defaultManager];
        
        // Get current directory
        path = [fm currentDirectoryPath];
        NSLog(@"Current directory path is %@", path);
        
        // Create a new directory
        if ([fm createDirectoryAtPath:dirName withIntermediateDirectories:YES attributes:nil error:NULL] == NO) {
            NSLog(@"Couldn't create directory!");
            return 1;
        }
        
        // Rename the new directory
        if ([fm moveItemAtPath:dirName toPath:newdir error:NULL] == NO){
            NSLog(@"Directory rename failed!");
            return 2;
        }
        
        // Change directory into the newdir directory
        if ([fm changeCurrentDirectoryPath:new] == NO){
            NSLog(@"Change directory failed!");
            return 3;
        }
        
        // Now get and display current working directory
        path = [fm currentDirectoryPath];
        NSLog(@"Current directory path is %@", path);
        
        NSLog(@"All operations were successful!");
    }
    return 0;
}
