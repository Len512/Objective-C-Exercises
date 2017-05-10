#ifndef Square_h
#define Square_h
#import "Rectangle.h"

@interface Square : Rectangle
- (id) initWithSide: (double) side;
- (void) setSide: (double) s;
- (double) side;
@end

#endif /* Square_h */
