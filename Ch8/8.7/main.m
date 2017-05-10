// Write a Rectangle method called intersect: that takes a rectangle as
// an argument and returns a rectancle representing the overlapping area
// between the two rectangles. If the rectangles do not intersect, return
// one whose width and height are zero and whose origin is at (0,0).

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "XYPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *origRect = [[Rectangle alloc] init];
        Rectangle *contRect = [[Rectangle alloc] init];
        XYPoint *origPoint = [[XYPoint alloc] init];
        XYPoint *contPoint = [[XYPoint alloc] init];
        Rectangle *result = [[Rectangle alloc] init];
        XYPoint *resultOrigin = [[XYPoint alloc] init];
        
        
        [origPoint setX:200 andY:420];
        [contPoint setX:400 andY:300];
        [origRect setWidth:250 andHeight:75];
        [contRect setWidth:100 andHeight:180];
        
        [origRect setOrigin:origPoint];
        [contRect setOrigin:contPoint];
        
        result = [origRect intersect:contRect];
        resultOrigin = [result origin];
        NSLog(@"Result width : %f, height : %f, origin : (%f,%f)", [result width], [result height], [resultOrigin x], [resultOrigin y]);
        
        // Check against a rectangle which is NOT contained
        XYPoint *testPoint = [[XYPoint alloc] init];
        Rectangle *testRect = [[Rectangle alloc] init];
        
        [testPoint setX:10 andY:10];
        [testRect setWidth:20 andHeight:40];
        [testRect setOrigin:testPoint];
        result = [origRect intersect:testRect];
        resultOrigin = [result origin];
        NSLog(@"Result width : %f, height : %f, origin : (%f,%f)", [result width], [result height], [resultOrigin x], [resultOrigin y]);
        
        
    }
    return 0;
}
