#import <Foundation/Foundation.h>
#import "GraphicObject.h"

@implementation GraphicObject

- (void) setFillColour: (int) colour {
    fillColour = colour;
}
- (void) setLineColout: (int) colour {
    lineColour = colour;
}
- (void) setFilled: (BOOL) b {
    filled = b;
}

- (int) fillColour {
    return fillColour;
}
- (int) lineColour {
    return lineColour;
}
- (BOOL) filled {
    return filled;
}

@end
