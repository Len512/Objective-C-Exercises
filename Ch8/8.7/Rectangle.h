#ifndef Rectangle_h
#define Rectangle_h

#import <Foundation/Foundation.h>
#import "GraphicObject.h"

@class XYPoint;

@interface Rectangle : GraphicObject
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
- (void) translate: (XYPoint *) pt;
- (BOOL) containsPoint: (XYPoint *) pt;
- (Rectangle *) intersect: (Rectangle *) rectangle;
@end

#endif /* Rectangle_h */
