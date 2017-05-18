// Modify the Rectangle and XYPoint classes defined in Chapter 8 to conform to the <NSCopying> protocol.
// Add a copyWithZone: method to both classes. Make sure that the Rectangle copies its XYPoint member
// origin using the XYPoint’s copy method. Does it make sense to implement both mutable and immutable
// copies for these classes? Explain.

#import <Foundation/Foundation.h>
#import "XYPoint.h"
#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        XYPoint *myPoint = [[XYPoint alloc] initWithX:100 andY:300];
        Rectangle *myRect = [[Rectangle alloc] initWithWidth:10 andHeight:30 andOrigin:[myPoint copy]];
        Rectangle *myRectCopy;
        
        NSLog(@"Rectangle myRect: ");
        NSLog(@"Width %g, Height %g, Origin (%g, %g)", myRect.width, myRect.height, myRect.origin.x, myRect.origin.y);
        
        myRectCopy = [myRect copy];
        
        NSLog(@"Rectangle myRectCopy: ");
        NSLog(@"Width %g, Height %g, Origin (%g, %g)", myRectCopy.width, myRectCopy.height, myRectCopy.origin.x, myRectCopy.origin.y);
        
        [myRect setWidth:50 andHeight:60];
        [myPoint setX:50 andY:100];
        [myRectCopy setOrigin:myPoint];
        
        NSLog(@"Rectangle myRect: ");
        NSLog(@"Width %g, Height %g, Origin (%g, %g)", myRect.width, myRect.height, myRect.origin.x, myRect.origin.y);
        
        NSLog(@"Rectangle myRectCopy: ");
        NSLog(@"Width %g, Height %g, Origin (%g, %g)", myRectCopy.width, myRectCopy.height, myRectCopy.origin.x, myRectCopy.origin.y);
        
    }
    return 0;
}
