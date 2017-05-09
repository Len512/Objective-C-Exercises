// Write a Rectangle method called containsPoint: that takes an XYPoint object as its argument:
// -(BOOL) containsPoint: (XYPoint *) aPoint;
// Have the method return the BOOL value YES if the rectangle encloses the specified point and NO if it does not.

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "XYPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc] init];
        XYPoint *myRectOrigin = [[XYPoint alloc] init];
        XYPoint *aPoint = [[XYPoint alloc] init];
        XYPoint *bPoint = [[XYPoint alloc] init];
        BOOL result;
        
        [myRect setWidth:5.5 andHeight:3.5];
        [myRectOrigin setX:0 andY:0];
        
        [aPoint setX:1 andY:1];
        [bPoint setX:230 andY:2];
        
        result = [myRect containsPoint:aPoint];
        NSLog(@"Does myRect contain aPoint?");
        NSLog(result ? @"Yes" : @"No");
        
        result = [myRect containsPoint:bPoint];
        NSLog(@"Does myRect contain bPoint?");
        NSLog(result ? @"Yes" : @"No");
    }
    return 0;
}
