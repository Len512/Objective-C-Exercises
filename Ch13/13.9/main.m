// Which of the following statements produce the output This is a test? Explain.
// NSLog (@"This is a test");
// NSLog ("This is a test");
// NSLog (@"%s", "This is a test");
// NSLog (@"%s", @"This is a test");
// NSLog ("%s", "This is a test");
// NSLog ("%s", @"This is a test");
// NSLog (@"%@", @"This is a test");
// NSLog (@"%@", "This is a test");

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog (@"This is a test"); // YES
        // NSLog ("This is a test");
        NSLog (@"%s", "This is a test"); // YES
        // NSLog (@"%s", @"This is a test");
        // NSLog ("%s", "This is a test");
        // NSLog ("%s", @"This is a test");
        NSLog (@"%@", @"This is a test"); // YES
        // NSLog (@"%@", "This is a test");
        
    }
    return 0;
}
