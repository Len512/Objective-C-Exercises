#ifndef Calculator_h
#define Calculator_h

@interface Calculator : NSObject
{
    double accumulator;
    double memory;
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
- (double) memoryClear;
- (double) memoryStore;
- (double) memoryRecall;
- (double) memoryAdd: (double) value;
- (double) memorySubtract: (double) value;
@end

#endif /* Calculator_h */
