#import <Foundation/Foundation.h>
#import "XYPoint.h"

@implementation XYPoint

@synthesize x, y;

- (void) setX:(double)xVal andY:(double)yVal {
    x = xVal;
    y = yVal;
}
- (void) print {
    NSLog(@"(%g, %g)", x, y);
}

@end
