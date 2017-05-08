#import <Foundation/Foundation.h>
#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *myRectangle = [ [Rectangle alloc] init];
        [myRectangle setWidth:13];
        [myRectangle setHeight:11];
        NSLog(@"Rectangle width: %i, height: %i", [myRectangle width], [myRectangle height]);
        NSLog(@"Rectangle area: %i, perimeter: %i", [myRectangle area], [myRectangle perimeter]);
    }
    return 0;
}
