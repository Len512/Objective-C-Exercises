// Given that you label the method developed in exercise 1 the designated initializer for the Rectangle class,
// and based on the Square and Rectangle class definitions from Chapter 8, add an initializer method to the Square
// class according to the fol- lowing declaration:
// -(id) initWithSide: (int) side;

#import <Foundation/Foundation.h>
#import "Square.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        double area, perimeter;
        
        Square *mySquare = [[Square alloc] initWithSide:25];
        area = [mySquare area];
        perimeter = [mySquare perimeter];
        NSLog(@"Area is %g and perimeter is %g", area, perimeter);
        
    }
    return 0;
}
