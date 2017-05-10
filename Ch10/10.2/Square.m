#import <Foundation/Foundation.h>
#import "Square.h"

@implementation Square
- (id) initWithSide:(double)side {
    self = [super init];
    if (self) {
        [self setWidth:side andHeight:side];
    }
    return self;
}
- (id) init {
    return [self initWithSide:0];
}
- (void) setSide:(double)s {
    [self setWidth:s andHeight:s];
}
- (double) side {
    return width;
}
@end
