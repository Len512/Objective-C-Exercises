// Given the following definitions
// char *message = "Programming in Objective-C is fun";
// char message2[] = "You said it";
// int  x = 100;
// determine whether each NSLog call from the following sets is valid and produces the same output as other calls from the set.
// /*** set 1 ***/
// NSLog (@"Programming in Objective-C is fun");
// NSLog (@"%s", "Programming in Objective-C is fun");
// NSLog (@"%s", message);
// /*** set 2 ***/
// NSLog (@"You said it");
// NSLog (@"%s", message2);
// NSLog (@"%s", &message2[0]);
// /*** set 3 ***/
// NSLog (@"said it");
// NSLog (@"%s", message2 + 4);
// NSLog (@"%s", &message2[4]);

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char *message1 = "Programming in Objective-C is fun";
        char message2[] = "You said it";
        int x = 100;
        
        NSLog(@"Programming in Objective-C is fun");
        NSLog(@"%s", "Programming in Objective-C is fun");
        NSLog(@"%s", message1);
        
        NSLog(@"You said it");
        NSLog(@"%s", message2);
        NSLog(@"%s", &message2[0]);
        
        NSLog(@"said it");
        NSLog(@"%s", message2 + 4);
        NSLog(@"%s", &message2[4]);
        
    }
    return 0;
}
