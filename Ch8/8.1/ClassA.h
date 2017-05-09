#ifndef ClassA_h
#define ClassA_h

#import <Foundation/Foundation.h>

@interface ClassA : NSObject
{
    int x;
}
- (void) initVar;
- (void) printVar;

@end

@interface ClassB : ClassA
{
    int y;
}
- (void) initVar;

@end

@interface ClassC : ClassB

- (void) initVar;

@end

#endif /* ClassA_h */
