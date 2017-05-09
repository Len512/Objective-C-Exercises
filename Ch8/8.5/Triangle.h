#ifndef Triangle_h
#define Triangle_h

#import <Foundation/Foundation.h>
#import "GraphicObject.h"

@interface Triangle : GraphicObject
{
    float a;
    float b;
    float c;
}
@property float a,b,c;
- (float) perimeter;
- (float) area;
- (void) setA: (float) na withB: (float) nb andC: (float) nc;
@end

#endif /* Triangle_h */
