// Enumerate the contents of a directory

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *path;
        NSFileManager *fm;
        NSDirectoryEnumerator *dirEnum;
        NSArray *dirArray;
        
        // Create instance of the file manager
        fm = [NSFileManager defaultManager];
        
        // Get current directory path
        path = [fm currentDirectoryPath];
        
        // Enumerate directory
        dirEnum = [fm enumeratorAtPath:path];
        NSLog(@"Contents of %@", path);
        while ((path = [dirEnum nextObject]) != nil) {
            NSLog(@"%@", path);
        }
        
        // Another way to enumerate a directory
        path = [fm currentDirectoryPath];
        dirArray = [fm contentsOfDirectoryAtPath:path error:NULL];
        NSLog(@"Contents using contentsOfDirectoryAtPath:error:");
        
        for (path in dirArray){
            NSLog(@"%@", path);
        }
    }
    return 0;
}
