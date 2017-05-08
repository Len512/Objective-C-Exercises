#import <Foundation/Foundation.h>
#import "XYPoint.h"

@implementation XYPoint

- (void) setX:(int)newX {
    x = newX;
}

- (void) setY:(int)newY {
    y = newY;
}

- (int) getX {
    return x;
}

- (int) getY {
    return y;
}
@end
