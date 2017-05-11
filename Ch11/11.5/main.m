#import <Foundation/Foundation.h>
#import "Square.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Square *mySquare = [[Square alloc] initWithSide:10];
        
        NSLog(@"Side: %i ", [mySquare side]);
        NSLog(@"Area: %i ", [mySquare area]);
        NSLog(@"Perimeter: %i ", [mySquare perimeter]);
        
        [mySquare setSide:20];
        NSLog(@"Side: %i ", [mySquare side]);
        NSLog(@"Area: %i ", [mySquare area]);
        NSLog(@"Perimeter: %i ", [mySquare perimeter]);
        
    }
    return 0;
}
