// When dealing with higher-resolution devices, you might need to use a coordinate system
// that enables you to specify points as floating-point values instead of as simple integers
// (iOS uses a structure called CGRect for working with rectangles. All coordinates and sizes
// are expressed as floating point numbers when working with such rectangles).
// Modify the XYPoint and Rectangle classes from this chapter to deal with floating-point
// numbers.The rectangle’s width, height, area, and perimeter should all work with floating-point numbers as well.

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "XYPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc] init];
        XYPoint *myPoint = [[XYPoint alloc] init];
        
        [myRect setWidth:5.5 andHeight:3.5];
        [myPoint setX:2.5 andY:3.5];
        
        myRect.origin = myPoint;
        
        NSLog (@"Rectangle w %f, h %f", myRect.width, myRect.height);
        NSLog (@"Origin at (%f, %f)",myRect.origin.x, myRect.origin.y);
        NSLog (@"Area %f, Perimeter %f", [myRect area], [myRect perimeter]);
    }
    return 0;
}
