// Write your own version of the standard UNIX tools basename

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *path, *basename;
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray *args = [proc arguments];
        
        
        if ([args count] != 2){
            NSLog(@"Usage: basename path");
            return 1;
        }
        path = [args objectAtIndex:1];
        NSLog(@"Path: %@", path);
        
        basename = [path lastPathComponent];
        NSLog(@"Basename: %@", basename);
    }
    return 0;
}
