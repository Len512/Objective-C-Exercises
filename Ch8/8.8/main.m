// Write a method for the Rectangle class called draw that draws a rectangle
// using dashes and vertical bar characters. (You should use printf to draw
// your characters, since NSLog will display a new line each time it's called.

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "XYPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc] init];
        
        [myRect setWidth:10 andHeight:3];
        [myRect draw];
        
    }
    return 0;
}
