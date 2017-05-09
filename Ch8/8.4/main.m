// Write a Rectangle method called translate: that takes an XYPoint object as its argument.
// Have it translate the rectangle’s origin by the specified vector.
// Note:Translation simply means moving the point from one place to another.

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "XYPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc] init];
        XYPoint *myPoint = [[XYPoint alloc] init];
        XYPoint *newPoint = [[XYPoint alloc] init];
        
        [myRect setWidth:5.5 andHeight:3.5];
        [myPoint setX:2.5 andY:3.5];
        [newPoint setX:2 andY:4];
        
        myRect.origin = myPoint;
        
        NSLog (@"Rectangle w %f, h %f", myRect.width, myRect.height);
        NSLog (@"Area %f, Perimeter %f", [myRect area], [myRect perimeter]);
        NSLog (@"Origin at (%f, %f)",myRect.origin.x, myRect.origin.y);

        
        [myRect translate:newPoint];
        NSLog (@"New origin at (%f, %f)",myRect.origin.x, myRect.origin.y);

    }
    return 0;
}
