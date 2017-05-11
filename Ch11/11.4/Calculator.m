#import <Foundation/Foundation.h>
#import "Calculator.h"

@implementation Calculator

@synthesize accumulator;

- (void) clear {
    accumulator = 0;
}
- (void) add: (double) value {
    accumulator += value;
}
- (void) sub: (double) value {
    accumulator -= value;
}
- (void) mul: (double) value {
    accumulator *= value;
}
- (void) div: (double) value {
    if (value != 0){
        accumulator /=value;
    } else {
        NSLog(@"Division by zero!");
    }
}

@end
