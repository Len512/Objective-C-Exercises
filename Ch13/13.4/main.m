// Write a function to add all the Fractions passed to it in an array and to return the result as a Fraction.

#import <Foundation/Foundation.h>
#import "Fraction.h"

Fraction *addFractionsFromArray (Fraction **f, int n);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Fraction *__autoreleasing fractionArray[5];
        
        int j = 3;
        for (int i = 0; i < 5; ++i){
            fractionArray[i] = [[Fraction alloc] init];
            [fractionArray[i] setTo:i+1 over:j];
            ++j;
        }
        for (int i = 0; i < 5; ++i){
            [fractionArray[i] print];
        }

        Fraction *__autoreleasing result = [[Fraction alloc] init];
        result = addFractionsFromArray(fractionArray, 5);
        [result reduce];
        [result print];
    }
    return 0;
}
Fraction *addFractionsFromArray (Fraction **f, int n) {
    Fraction *result = [[Fraction alloc] init];
    result = f[0];
    for (int i = 1; i < n; ++i){
        result = [result add:f[i]];
    }
    return result;
}
