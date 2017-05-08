#ifndef Calculator_h
#define Calculator_h

@interface Calculator : NSObject
{
    double accumulator;
}
- (void) setAccumulator: (double) value;
- (void) clear;
- (double) accumulator;
- (double) add: (double) value;
- (double) subtract: (double) value;
- (double) multiple: (double) value;
- (double) divide: (double) value;
- (double) changeSign;
- (double) reciprocal;
- (double) xSquared;
@end

#endif /* Calculator_h */
