#import <Foundation/Foundation.h>
#import "ExponentialEval.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        ExponentialEval *myExpression = [ [ExponentialEval alloc] init];
        [myExpression evaluateExpression];
        NSLog(@"(3.31 x 10 8 + 2.01 x 10 7) / (7.16 x 10 6 + 2.01 x 10 8) = %g", [myExpression getEvaluated]);
    }
    return 0;
}
