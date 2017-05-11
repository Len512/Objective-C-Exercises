#ifndef Calculator_h
#define Calculator_h

@interface Calculator : NSObject
{
    double accumulator;
}
@property double accumulator;

- (void) clear;
- (void) add: (double) value;
- (void) sub: (double) value;
- (void) mul: (double) value;
- (void) div: (double) value;

@end

#endif /* Calculator_h */
