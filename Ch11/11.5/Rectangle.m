#import <Foundation/Foundation.h>
#import "Rectangle.h"

@implementation Rectangle

@synthesize width, height;

- (int) area {
    return width * height;
}
- (int) perimeter {
    return 2 * (width + height);
}
- (void) setWidth: (int) w andHeight: (int) h {
    width = w;
    height = h;
}

@end
