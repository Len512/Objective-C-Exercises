// Based on the discussions about argument and return types in this chapter, modify both add: methods
// in the Fraction and Complex classes to take and return id objects.Then write a program that incorporates
// the following code sequence: result = [dataValue1 add: dataValue2];
// [result print];
// Here, result, dataValue1, and dataValue2 are id objects. Make sure you set dataValue1 and dataValue2
// appropriately in your program and release all objects before your program terminates.

#import <Foundation/Foundation.h>
#import "Complex.h"
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        id dataValue1, dataValue2, result;
        
        Fraction *f1 = [[Fraction alloc] init];
        Fraction *f2 = [[Fraction alloc] init];
        
        Complex *c1 = [[Complex alloc] init];
        Complex *c2 = [[Complex alloc] init];
        
        [f1 setTo:2 over:5];
        [f2 setTo:3 over:6];
        
        [c1 setReal:10.0 andImaginary:2.5];
        [c2 setReal:3 andImaginary:5];
        
        dataValue1 = f1;
        dataValue2 = f2;
        result = [dataValue1 addUsingId:dataValue2];
        [result print];
        
        dataValue1 = c1;
        dataValue2 = c2;
        result = [dataValue1 addUsingId:dataValue2];
        [result print];

}
    return 0;
}
