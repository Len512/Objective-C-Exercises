#ifndef Rectangle_h
#define Rectangle_h

#import <Foundation/Foundation.h>

@class XYPoint;

@interface Rectangle : NSObject
{
    float width;
    float height;
    XYPoint *origin;
}
@property float width, height;

- (void) setWidth: (float) w andHeight: (float) h;
- (float) area;
- (float) perimeter;
// defining getter and setter methods for origin
- (XYPoint *) origin;
- (void) setOrigin: (XYPoint *) pt;

@end

#endif /* Rectangle_h */
