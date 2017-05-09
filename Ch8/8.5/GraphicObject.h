#ifndef GraphicObject_h
#define GraphicObject_h

#import <Foundation/Foundation.h>

@interface GraphicObject : NSObject
{
    int fillColour;  // 32-bit colour
    BOOL filled;     // is the object filled
    int lineColour;  // 32-bit line colour
}
- (void) setFillColour: (int) colour;
- (void) setLineColout: (int) colour;
- (void) setFilled: (BOOL) b;

- (int) fillColour;
- (int) lineColour;
- (BOOL) filled;

@end

#endif /* GraphicObject_h */
