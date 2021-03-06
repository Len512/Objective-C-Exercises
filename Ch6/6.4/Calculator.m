#import <Foundation/Foundation.h>
#import "Calculator.h"

@implementation Calculator

-(void) setAccumulator: (double) value {
    accumulator = value;
}
-(void) clear {
    accumulator = 0;
}
-(double) accumulator {
    return accumulator;
}
-(void) add: (double) value {
    accumulator += value;
}
-(void) subtract: (double) value {
    accumulator -= value;
}
-(void) multiply: (double) value {
    accumulator *= value;
}
-(void) divide: (double) value {
    if (value == 0){
        NSLog(@"Division by 0!");
    } else {
        accumulator /= value;
    }
}

@end
