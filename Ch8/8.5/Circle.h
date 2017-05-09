#ifndef Circle_h
#define Circle_h
#import <Foundation/Foundation.h>
#import "GraphicObject.h"

@interface Circle : GraphicObject
{
    float radius;
}
@property float radius;

- (float) circumferance;
- (float) area;

@end

#endif /* Circle_h */
