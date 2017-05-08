// Program 6.8A displays the value in the accumulator even if an invalid operator is
// entered or division by zero is attempted. Fix that problem.

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double value1, value2;
        char operator;
        Calculator *deskCalc = [[Calculator alloc] init];
        NSLog (@"Type in your expression.");
        scanf ("%lf %c %lf", &value1, &operator, &value2);
        [deskCalc setAccumulator: value1];
        if ( operator == '+' ){
            [deskCalc add: value2];
        } else if ( operator == '-' ){
            [deskCalc subtract: value2];
        } else if ( operator == '*' ){
            [deskCalc multiply: value2];
        } else if ( operator == '/' ){
            if (value2 == 0) {
                NSLog(@"Division by zero!");
                return 0;
            }
            [deskCalc divide: value2];
        } else {
            NSLog(@"Invalid operator!");
            return 0;
            
        }
        NSLog (@"%.2f", [deskCalc accumulator]);
    }
    return 0;
}
