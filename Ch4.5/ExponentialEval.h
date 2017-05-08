#ifndef ExponentialEval_h
#define ExponentialEval_h

@interface ExponentialEval : NSObject
{
    double expValue;
}

- (double) getEvaluated;
- (void) evaluateExpression;

@end

#endif /* ExponentialEval_h */
