#import <Foundation/Foundation.h>
#import "ClassA.h"

@implementation ClassA

- (void) initVar {
    x = 100;
}
- (void) printVar {
    NSLog(@"x is %i", x);
}
@end

@implementation ClassB
- (void) initVar {
    x = 200;
}
@end

@implementation ClassC
- (void) initVar {
    x = 300;
}
@end
