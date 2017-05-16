// Write a command-line tool called myfind that takes two arguments.
// The first is a starting directory to begin the search, and the second
// is a filename to locate. So, the command line
// $ myfind /Users proposal.doc
// /Users/stevekochan/MyDocuments/proposals/proposal.doc
// $
// begins searching the file system from /Users to locate the file proposal.doc.
// Print either a full path to the file if it’s found (as shown) or an appropriate
// message if it’s not.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray *args = [proc arguments];
        NSFileManager *fm = [NSFileManager defaultManager];
        NSString *path, *filename, *curr;
        NSDirectoryEnumerator *dirEnum;
        BOOL found = NO;
        
        if ([args count]!=3){
            NSLog(@"Usage: %@ /StartingDirectoryName filename", [proc processName]);
        }
        
        path = [args objectAtIndex:1];
        filename = [args objectAtIndex:2];
        dirEnum = [fm enumeratorAtPath:path];
        
        while (( curr = [dirEnum nextObject]) != nil){
            if ( [curr rangeOfString:filename].location != NSNotFound){
                NSLog(@"%@/%@", path, curr);
                found = YES;
            }
        }
        if (!found){
            NSLog(@"%@ not found", filename);
        }
    }
    return 0;
}
