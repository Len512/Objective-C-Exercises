#import <Foundation/Foundation.h>
#import "Ex44.h"

@implementation Ex44

- (void) setX:(float)x {
    evalX = 3*x*x*x - 5*x*x + 6;
}

- (float) getEvalX {
    return evalX;
}
@end
