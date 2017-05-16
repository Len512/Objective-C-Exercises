// Write your own version of the standard UNIX tools basename

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *path, *basename, *toRemove;
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray *args = [proc arguments];
        
        
        if (([args count] != 2) && ([args count] != 3)){
            NSLog(@"Usage: basename path or basename path charsToRemove");
            return 1;
        }
        path = [args objectAtIndex:1];
        NSLog(@"Path: %@", path);
        
        basename = [path lastPathComponent];
        
        if ([args count] == 3){
            toRemove = [args objectAtIndex:2];
            // Check if toRemove is equal to the last characters of basename
            if ([basename hasSuffix:toRemove]){
                // Remove only the last occurence of toRemove (the suffix)
                NSRange replaceRange = [basename rangeOfString:toRemove options:NSBackwardsSearch];
                if (replaceRange.location != NSNotFound) {
                    // if toRemove is equal to the basename, return the basename 
                    if (![basename isEqualToString:toRemove]){
                    basename = [basename stringByReplacingCharactersInRange:replaceRange withString:@""];
                    }
                }
            }
        }
        NSLog(@"Basename: %@", basename);
    }
    return 0;
}
