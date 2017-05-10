#ifndef Rectangle_h
#define Rectangle_h

#import <Foundation/Foundation.h>

@class XYPoint;

@interface Rectangle : NSObject
{
    double width;
    double height;
    XYPoint *origin;
}
@property double width, height;

- (id) initWithWidth: (double) w andHeight: (double) h;
- (void) setWidth: (double) w andHeight: (double) h;
- (double) area;
- (double) perimeter;
// defining getter and setter methods for origin
- (XYPoint *) origin;
- (void) setOrigin: (XYPoint *) pt;
- (void) translate: (XYPoint *) pt;
- (BOOL) containsPoint: (XYPoint *) pt;
- (Rectangle *) intersect: (Rectangle *) rectangle;
@end

#endif /* Rectangle_h */
