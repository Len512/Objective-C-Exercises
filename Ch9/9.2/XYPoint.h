#ifndef XYPoint_h
#define XYPoint_h

#import <Foundation/Foundation.h>

@interface XYPoint : NSObject
{
    double x;
    double y;
}
@property double x, y;
- (void) setX: (double) xVal andY: (double) yVal;
- (void) print;
@end
#endif /* XYPoint_h */
