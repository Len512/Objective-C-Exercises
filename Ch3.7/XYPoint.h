#ifndef XYPoint_h
#define XYPoint_h

@interface XYPoint : NSObject
{
    int x;
    int y;
}

- (void) setX: (int) newX;
- (void) setY: (int) newY;
- (int) getX;
- (int) getY;

@end


#endif /* XYPoint_h */
