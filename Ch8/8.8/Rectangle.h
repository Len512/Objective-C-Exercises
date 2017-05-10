#ifndef Rectangle_h
#define Rectangle_h

#import <Foundation/Foundation.h>
#import "GraphicObject.h"

@class XYPoint;

@interface Rectangle : GraphicObject
{
    double width;
    double height;
    XYPoint *origin;
}
@property double width, height;

- (void) setWidth: (double) w andHeight: (double) h;
- (double) area;
- (double) perimeter;
// defining getter and setter methods for origin
- (XYPoint *) origin;
- (void) setOrigin: (XYPoint *) pt;
- (void) translate: (XYPoint *) pt;
- (BOOL) containsPoint: (XYPoint *) pt;
- (Rectangle *) intersect: (Rectangle *) rectangle;
- (void) draw;
@end

#endif /* Rectangle_h */
