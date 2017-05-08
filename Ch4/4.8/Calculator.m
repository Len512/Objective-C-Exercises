#import <Foundation/Foundation.h>
#import "Calculator.h"

@implementation Calculator

- (void) setAccumulator: (double) value {
    accumulator = value;
}
- (void) clear {
    accumulator = 0;
}
- (double) accumulator {
    return accumulator;
}
- (double) add: (double) value {
    return accumulator + value;
}
- (double) subtract: (double) value {
    return accumulator - value;
}
- (double) multiple: (double) value {
    return accumulator * value;
}
- (double) divide: (double) value {
    return accumulator / value;
}

@end
