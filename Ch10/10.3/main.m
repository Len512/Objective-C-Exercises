// Add a counter to the Fraction class’s add: method to count the number of times
// it is invoked. How can you retrieve the value of the counter?

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Fraction *aFract = [[Fraction alloc] initWith:3 over:4];
        Fraction *bFract = [[Fraction alloc] initWith:1 over:4];
        Fraction *cFract = [[Fraction alloc] initWith:1 over:2];
        Fraction *result;
        
        NSLog(@"Add method invoked %i times", [Fraction getAddCounter]);
        
        result = [aFract add:bFract];
        NSLog(@"3/4 + 1/4 = ");
        [result print];
        
        result = [aFract add:cFract];
        NSLog(@"3/4 + 1/2 = ");
        [result print];
        
        result = [cFract add:bFract];
        NSLog(@"1/2 + 1/4 = ");
        [result print];
        
        NSLog(@"Add method invoked %i times", [Fraction getAddCounter]);
        
    }
    return 0;
}
