// Using typedef, define a type called FractionObj that enables you to write
// statements such as the following:
// FractionObj f1 = [[Fraction alloc] init],
//             f2 = [[Fraction alloc] init];

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        typedef Fraction *FractionObj;
        
        FractionObj f1 = [[Fraction alloc] init], f2 = [[Fraction alloc] init];
        
        [f1 setTo:2 over:3];
        [f2 setTo:4 over:5];
        
        [f1 print];
        [f2 print];
        
    }
    return 0;
}
