#import <Foundation/Foundation.h>
#import "Square.h"
#import "Rectangle.h"

@implementation Square
{
    Rectangle *rect;
}
- (Square *) initWithSide: (int) s {
    if (self){
        Rectangle *initRect = [[Rectangle alloc] init];
        [initRect setWidth:s andHeight:s];
        self->rect = initRect;
    }
    return self;
    
}
- (Square *) init {
    return [self initWithSide:0];
}
- (void) setSide: (int) s {
    [self->rect setWidth:s andHeight:s];
}
- (int) side {
    return [self->rect width];
}
- (int) area {
    return [self->rect area];
}
- (int) perimeter {
    return [self->rect perimeter];
}

@end
