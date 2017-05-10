// Add a print method to your XYPoint class defined in Chapter 8.
// Have it display the point in the format (x, y).
// Then modify Program 9.2 to incorporate an XYPoint object.
// Have the modified program create an XYPoint object, set its value,
// assign it to the id variable dataValue, and then display its value.

#import <Foundation/Foundation.h>
#import "Complex.h"
#import "Fraction.h"
#import "XYPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        id dataValue;
        
        Fraction *f1 = [[Fraction alloc] init];
        Complex *c1 = [[Complex alloc] init];
        XYPoint *p1 = [[XYPoint alloc] init];
        
        [f1 setTo:2 over:5];
        [c1 setReal:10.0 andImaginary:2.5];
        [p1 setX:2 andY:3];
        
        dataValue = f1;
        [dataValue print];
        
        dataValue = c1;
        [dataValue print];
        
        dataValue = p1;
        [dataValue print];
    }
    return 0;
}
