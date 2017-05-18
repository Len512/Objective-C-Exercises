#import "XYPoint.h"
@implementation XYPoint

@synthesize x, y;
- (id) initWithX: (double) theX andY: (double) theY {
    self = [super init];
    if (self){
        [self setX:theX andY:theY];
    }
    return self;
}
- (id) init {
    return [self initWithX:0 andY:0];
}
- (void) setX:(double)xVal andY:(double)yVal {
    x = xVal;
    y = yVal;
}
- (id) copyWithZone: (NSZone *) zone {
    id pointCopy = [[[self class] allocWithZone: zone] init];
    [pointCopy setX:x andY:y];
    return pointCopy;
}
@end
