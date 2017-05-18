#ifndef Rectangle_h
#define Rectangle_h

#import <Foundation/Foundation.h>

@class XYPoint;

@interface Rectangle : NSObject <NSCopying>
{
    double width;
    double height;
    XYPoint *origin;
}
@property double width, height;
- (id) initWithWidth: (double) theWidth andHeight: (double) theHeight andOrigin: (XYPoint *) theOrigin;
- (id) init;
- (void) setWidth: (double) w andHeight: (double) h;
- (double) area;
- (double) perimeter;
// defining getter and setter methods for origin
- (XYPoint *) origin;
- (void) setOrigin: (XYPoint *) pt;
- (void) translate: (XYPoint *) pt;
@end

#endif /* Rectangle_h */
