#ifndef Square_h
#define Square_h

@interface Square : NSObject

- (Square *) initWithSide: (int) s;
- (Square *) init;
- (void) setSide: (int) s;
- (int) side;
- (int) area;
- (int) perimeter;

@end

#endif /* Square_h */
