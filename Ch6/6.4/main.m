// Program to evaluate simple expressions of the form
// number operator

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double value1;
        char operator;
        int flagg = 0;
        
        Calculator *deskCalc = [ [Calculator alloc] init];
        
        NSLog(@"Type in your expression.");
        
        while (flagg == 0){
            scanf("%lf %c", &value1, &operator);
            
            switch ( operator ) {
                case 'S':
                    [deskCalc setAccumulator:value1];
                    break;
                case 'E':
                    flagg = 1;
                    break;
                case '+':
                    [deskCalc add:value1];
                    break;
                case '-':
                    [deskCalc subtract:value1];
                    break;
                case '*':
                    [deskCalc multiply:value1];
                    break;
                case '/':
                    [deskCalc divide:value1];
                    break;
                default:
                    NSLog(@"Unknown operator!");
                    break;
            }
            NSLog(@"%.2f", [deskCalc accumulator]);
        }
        
    }
    return 0;
}
