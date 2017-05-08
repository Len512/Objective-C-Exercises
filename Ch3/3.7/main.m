#import <Foundation/Foundation.h>
#import "XYPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        XYPoint *myPoint = [ [XYPoint alloc] init];
        [myPoint setX:5];
        [myPoint setY:7];
        NSLog(@"My point is (%i, %i)", [myPoint getX], [myPoint getY]);
    }
    return 0;
}
