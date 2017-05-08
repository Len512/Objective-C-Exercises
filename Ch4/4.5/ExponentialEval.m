#import <Foundation/Foundation.h>
#import "ExponentialEval.h"

@implementation ExponentialEval

- (double) getEvaluated {
    return expValue;
}
- (void) evaluateExpression  {
    expValue = (3.31e+8 + 2.01e+7) / (7.16e+6 + 2.01e+8);
}

@end
