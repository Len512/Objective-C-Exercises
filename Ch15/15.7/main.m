// Using the Fraction class defined in Part I, set up an array of fractions with some arbitrary values.
// Add a description method for your Fraction class as described in the text.Then use three different
// techniques to display the values of your fractions: 1) a regular for loop, 2) fast enumeration,
// and finally, 3) just using %@.

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main (int argc, char *argv[]){
    @autoreleasepool {
        
        NSMutableArray *fracs = [NSMutableArray array];
        Fraction *f1 = [[Fraction alloc] initWith:2 over:3];
        Fraction *f2 = [[Fraction alloc] initWith:1 over:4];
        Fraction *f3 = [[Fraction alloc] initWith:1 over:2];
        NSString *desc;
        
        [fracs addObject:f1];
        [fracs addObject:f2];
        [fracs addObject:f3];
        
        // Regular for loop
        for (int i = 0; i < [fracs count]; ++i){
            desc = [fracs[i] description];
            NSLog(@"With a regular for loop: ");
            NSLog(@"%@", desc);
        }
        
        // Fast enumeration
        for (Fraction *f in fracs) {
            desc = [f description];
            NSLog(@"With fast enumeration: ");
            NSLog(@"%@", desc);
        }
        
        // Just using %@
        NSLog(@"Just using %%+@ ");
        NSLog(@"%@", fracs);

    }
    return 0;
}
