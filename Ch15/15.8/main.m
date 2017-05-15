// Using the Fraction class defined in Part I, set up a mutable array of fractions with arbitrary values.
// Then sort the array using the sortUsingSelector: method from the NSMutableArray class.
// Add a Comparison category to the Fraction class and implement your comparison method in that category.

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Fraction+Comparison.h"

int main (int argc, char *argv[]){
    @autoreleasepool {
        
        NSMutableArray *fracs = [NSMutableArray array];
        Fraction *f1 = [[Fraction alloc] initWith:2 over:3];
        Fraction *f2 = [[Fraction alloc] initWith:1 over:4];
        Fraction *f3 = [[Fraction alloc] initWith:1 over:2];
        
        [fracs addObject:f1];
        [fracs addObject:f2];
        [fracs addObject:f3];
        
        NSLog(@"%@", fracs);
        
        [fracs sortUsingSelector:@selector(compareFractions:)];
        NSLog(@"%@", fracs);
    }
    return 0;
}
