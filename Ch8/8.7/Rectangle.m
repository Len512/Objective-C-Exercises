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
- (BOOL) containsPoint: (XYPoint *) pt {
    if ((pt.x >= origin.x) && (pt.x <= origin.x + width) && (pt.y >= origin.y) && (pt.y <= origin.y + height)){
        return YES;
    } else {
        return NO;
    }
}
- (Rectangle *) intersect: (Rectangle *) rectangle {
   
    Rectangle *result = [[Rectangle alloc] init];
    // Need to check if any of the tops of the rectangle is contained by the original one
    // if none is contained, return 0s
    XYPoint *a = [[XYPoint alloc] init];
    XYPoint *b = [[XYPoint alloc] init];
    XYPoint *c = [[XYPoint alloc] init];
    XYPoint *d = [[XYPoint alloc] init];
    XYPoint *intersection = [[XYPoint alloc] init];
    float w, h;
    
    [a setX:rectangle.origin.x andY:rectangle.origin.y + rectangle.height];
    [b setX:rectangle.origin.x andY:rectangle.origin.y];
    [c setX:rectangle.origin.x + rectangle.width andY:rectangle.origin.y];
    [d setX:rectangle.origin.x + rectangle.width andY:rectangle.origin.y + rectangle.height];
    
    NSLog(@"A(%f, %f)", a.x, a.y);
    NSLog(@"B(%f, %f)", b.x, b.y);
    NSLog(@"C(%f, %f)", c.x, c.y);
    NSLog(@"D(%f, %f)", d.x, d.y);
    
    if ([self containsPoint:a]){
        
        intersection.x = a.x;
        intersection.y = origin.y;
        w = width + origin.x - a.x;
        h = a.y - origin.y;
        NSLog(@"A");
        
    } else if ([self containsPoint:b]) {
    
        intersection.x = b.x;
        intersection.y = height + origin.y;
        w = width + origin.x - b.x;
        h = intersection.y - b.y;
        NSLog(@"B");
    } else if ([self containsPoint:c]) {

        intersection.x = c.x;
        intersection.y = height + origin.y;
        w = c.x - origin.x;
        h = intersection.y - c.y;
        NSLog(@"C");
    } else if ([self containsPoint:d]) {
    
        intersection.x = d.x;
        intersection.y = origin.y;
        w = intersection.x - origin.x;
        h = d.y - origin.y;
        NSLog(@"D");
    } else {
        [intersection setX:0 andY:0];
        w = 0;
        h = 0;
        NSLog(@"Zero");
    }
    [result setWidth:w andHeight:h];
    [result setOrigin:intersection];
    NSLog(@"Intersection(%f, %f)", intersection.x, intersection.y);
    return result;
}

@end
