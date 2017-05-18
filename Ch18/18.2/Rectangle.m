#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "XYPoint.h"

@implementation Rectangle

@synthesize width, height;
- (id) initWithWidth: (double) theWidth andHeight: (double) theHeight andOrigin: (XYPoint *) theOrigin {
    self = [super init];
    if (self) {
        [self setWidth:theWidth andHeight:theHeight];
        [self setOrigin:[theOrigin copy]];
    }
    return  self;
}
- (id) init {
    XYPoint *zero = [[XYPoint alloc] init];
    return [self initWithWidth:0 andHeight:0 andOrigin:[zero copy]];
}
- (void) setWidth: (double) w andHeight: (double) h {
    width = w;
    height = h;
}
- (double) area {
    return width * height;
}
- (double) perimeter {
    return 2*width + 2*height;
}
- (XYPoint *) origin {
    return origin;
}
- (void) setOrigin: (XYPoint *) pt {
    if (!origin) {
        origin = [[XYPoint alloc] init];
    }
    origin.x = pt.x;
    origin.y = pt.y;
}
- (void) translate: (XYPoint *) pt {
    if (!origin) {
        origin = [[XYPoint alloc] init];
    }
    origin.x += pt.x;
    origin.y += pt.y;
}
- (id) copyWithZone: (NSZone *) zone {
    id rectCopy = [[[self class] allocWithZone: zone] init];
    [rectCopy setWidth:width andHeight:height];
    [rectCopy setOrigin: [origin copy]];
    return rectCopy;
}
@end
