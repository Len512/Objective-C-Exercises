#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "XYPoint.h"
@implementation Rectangle

@synthesize width, height;

- (void) setWidth: (float) w andHeight: (float) h {
    width = w;
    height = h;
}
- (float) area {
    return width * height;
}
- (float) perimeter {
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
@end
