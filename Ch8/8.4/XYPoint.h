#import <Foundation/Foundation.h>
#ifndef XYPoint_h
#define XYPoint_h

@interface XYPoint : NSObject
{
    float x;
    float y;
}
@property float x,y;

- (void) setX: (float) xVal andY: (float) yVal;

@end

#endif /* XYPoint_h */
