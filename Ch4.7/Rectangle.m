#import <Foundation/Foundation.h>
#import "Rectangle.h"

@implementation Rectangle

- (void) setWidth: (int) w {
    width = w;
}
- (void) setHeight: (int) h {
    height = h;
}
- (int) width {
    return width;
}
- (int) height {
    return height;
}
- (int) area {
    return width * height;
}
- (int) perimeter {
    return 2*width + 2*height;
}

@end
