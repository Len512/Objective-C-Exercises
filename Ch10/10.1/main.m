// Using the Rectangle class from Chapter 8, add an initializer method according to
// the following declaration: (Note: Be sure to override init to use this initializer.)
// -(id) initWithWidth: (int) w andHeight: (int) h;

#import <Foundation/Foundation.h>
#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double area, perimeter;
        Rectangle *myRect = [[Rectangle alloc] initWithWidth:30 andHeight:15];
        area = [myRect area];
        perimeter = [myRect perimeter];
        NSLog(@"Area is %g and perimeter is %g", area, perimeter);
        
    }
    return 0;
}
