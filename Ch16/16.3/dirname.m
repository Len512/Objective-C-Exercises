// Write your own version of the standard UNIX tools basename

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *path, *dirname;
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray *args = [proc arguments];
        
        if ([args count] != 2){
            NSLog(@"Usage: dirname path");
            return 1;
        }
        path = [args objectAtIndex:1];
        NSLog(@"Path: %@", path);
        
        dirname = [path stringByDeletingLastPathComponent];
        if ([dirname length] == 0){
            dirname = @".";
        }
        NSLog(@"Dirname: %@", dirname);
    }
    return 0;
}
