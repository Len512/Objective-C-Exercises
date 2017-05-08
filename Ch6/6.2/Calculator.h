// Program 6.8: Program to evaluate simple expressions of the form
// number operator number

#ifndef Calculator_h
#define Calculator_h
#import <Foundation/Foundation.h>

// Implement a Calculator Class

@interface Calculator : NSObject
{
    double accumulator;
}

// accumulator methods
- (void) setAccumulator: (double) value;
- (void) clear;
- (double) accumulator;
// arithmetic methods
- (void) add: (double) value;
- (void) subtract: (double) value;
- (void) multiply: (double) value;
- (void) divide: (double) value;
@end

#endif /* Calculator_h */
