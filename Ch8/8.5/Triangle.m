#import <Foundation/Foundation.h>
#import "Triangle.h"

@implementation Triangle

@synthesize a, b, c;

- (float) perimeter {
    return a+b+c;
}
- (float) area {
    float p = (a+b+c)/2;
    return sqrt(p * (p - a) * (p - b) * (p - c));
}
- (void) setA:(float)na withB:(float)nb andC:(float)nc{
    a = na;
    b = nb;
    c = nc;
}
@end
