// Define a new class called GraphicObject, and make it a subclass of NSObject. Define instance variables in your new class as follows:
// int   fillColor;
// BOOL  filled;
// int   lineColor;
// 32-bit color
// Is the object filled?
// 32-bit line color
// Write methods to set and retrieve the variables defined previously. Make the Rectangle class a subclass of GraphicObject.
// Define new classes, Circle and Triangle, which are also subclasses of GraphicObject.Write methods to set and retrieve
// the various parameters for these objects and also to calculate the circle’s circumference and area, and the triangle’s perimeter and area.

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "Triangle.h"
#import "Circle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc] init];
        Triangle *myTri = [[Triangle alloc] init];
        Circle *myCircle = [[Circle alloc] init];
        
        [myRect setWidth:5.5 andHeight:3.5];
        [myTri setA:2 withB:3 andC:4];
        [myCircle setRadius:3];
        
        NSLog (@"Rectangle w:%f, h:%f", myRect.width, myRect.height);
        NSLog (@"Area:%f, Perimeter:%f", [myRect area], [myRect perimeter]);

        NSLog (@"Triangle a:%f, b:%f, c:%f", myTri.a, myTri.b, myTri.c);
        NSLog (@"Area:%f, Perimeter:%f", [myTri area], [myTri perimeter]);
        
        NSLog (@"Circle radius:%f", myCircle.radius);
        NSLog (@"Circumference:%f, Area:%f", [myCircle circumferance], [myCircle area]);
    }
    return 0;
}
