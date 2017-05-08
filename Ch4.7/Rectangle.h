#ifndef Rectangle_h
#define Rectangle_h

@interface Rectangle : NSObject
{
    int width;
    int height;
}
- (void) setWidth: (int) w;
- (void) setHeight: (int) h;
- (int) width;
- (int) height;
- (int) area;
- (int) perimeter;

@end

#endif /* Rectangle_h */
