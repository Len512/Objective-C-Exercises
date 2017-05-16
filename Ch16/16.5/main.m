// Given the NSPathUtilities.h function NSTemporaryDirectory and the NSProcessInfo method
// globallyUniqueString described in this chapter, add a category called TempFiles to NSString,
// and in it define a method called temporaryFileName that returns a different,
// unique filename every time it is invoked.

#import <Foundation/Foundation.h>
#import "NSString+TempFiles.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *tempDir = NSTemporaryDirectory();
        NSString *tempFile = [NSString temporaryFileName];
        NSString *path;
        
        NSLog(@"Temporary directory is : %@", tempDir);
        NSLog(@"Temporary filename is : %@", tempFile);
        path = [tempDir stringByAppendingPathComponent:tempFile];
        NSLog(@"Temporary file path is : %@", path);
        
    }
    return 0;
}
