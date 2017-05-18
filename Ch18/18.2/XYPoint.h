#ifndef XYPoint_h
#define XYPoint_h

#import <Foundation/Foundation.h>

@interface XYPoint : NSObject <NSCopying>
{
    double x;
    double y;
}
@property double x,y;
- (id) initWithX: (double) theX andY: (double) theY;
- (id) init;
- (void) setX: (double) xVal andY: (double) yVal;

@end

#endif /* XYPoint_h */
