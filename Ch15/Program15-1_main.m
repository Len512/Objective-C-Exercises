#import <Foundation/Foundation.h>

int main (int argc, char *argv[]){
    @autoreleasepool {
        
        NSNumber *myNumber, *floatNumber, *intNumber;
        NSInteger myInt;
        
        // integer value = 100
        intNumber = [NSNumber numberWithInteger:100];
        myInt = [intNumber integerValue];
        NSLog(@"%li", (long) myInt);
        
        // long value = abcdef
        myNumber = [NSNumber numberWithLong:0xabcdef];
        NSLog(@"%lx", [myNumber longValue]);
        
        // float value = 100
        floatNumber = [NSNumber numberWithFloat:100.00];
        NSLog(@"%g", [floatNumber floatValue]);
        
        // char value = X
        myNumber = [NSNumber numberWithChar:'X'];
        NSLog(@"%c", [myNumber charValue]);
        
        // double value = 1.2345e+19
        myNumber = [NSNumber numberWithDouble:12345e+15];
        NSLog(@"%lg", [myNumber doubleValue]);
        
        // Wrong access here = --9223372036854775808
        NSLog(@"%li", (long) [myNumber integerValue]);
        
        // Test two numbers for equality = Numbers are equal
        if ([intNumber isEqualToNumber:floatNumber] == YES) {
            NSLog(@"Numbers are equal");
        } else {
            NSLog(@"Numbers are not equal");
        }
        
        // Test if one number is <, ==, or > second number = First number is less than second
        if ([intNumber compare:myNumber] == NSOrderedAscending){
            NSLog(@"First number is less than second");
        }
    }
    
    return 0;
}
