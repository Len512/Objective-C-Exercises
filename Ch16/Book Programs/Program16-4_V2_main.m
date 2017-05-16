// Enumerate the contents of a directory

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *path = @"/Users/USER/Documents/Programming/ObjC-Kochan/Ch16/Ch16/";
        NSFileManager *fm;
        NSDirectoryEnumerator *dirEnum;
        NSArray *dirArray;
        
        // Create instance of the file manager
        fm = [NSFileManager defaultManager];
        
        // Enumerate directory
        dirEnum = [fm enumeratorAtPath:path];
        NSLog(@"Contents of %@", path);
        while ((path = [dirEnum nextObject]) != nil) {
            NSLog(@"%@", path);
        }
        
        // Another way to enumerate a directory
        path = @"/Users/eleni/Documents/Programming/ObjC-Kochan/Ch16/Ch16/";
        dirArray = [fm contentsOfDirectoryAtPath:path error:NULL];
        NSLog(@"Contents using contentsOfDirectoryAtPath:error:");
        
        for (path in dirArray){
            NSLog(@"%@", path);
        }
    }
    return 0;
}
