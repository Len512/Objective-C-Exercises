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
- (double) changeSign {
    return -accumulator;
}
- (double) reciprocal {
    return 1/accumulator;
}
- (double) xSquared {
    return accumulator * accumulator;
}

- (double) memoryClear {
    memory = 0;
    return accumulator;
}
- (double) memoryStore {
    memory = accumulator;
    return accumulator;
}
- (double) memoryRecall {
    accumulator = memory;
    return accumulator;
}
- (double) memoryAdd: (double) value {
    memory += value;
    accumulator = memory;
    return accumulator;
}
- (double) memorySubtract: (double) value {
    memory -= value;
    accumulator = memory;
    return accumulator;
}
@end
