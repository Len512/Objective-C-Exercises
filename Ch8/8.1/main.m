// Add a new class called ClassC, which is a subclass of ClassB, to Program 8.1. 
// Make an initVar method that sets the value of its instance variable x to 300.
// Write a test routine that declares ClassA, ClassB, and ClassC objects and invokes their corresponding initVar methods.

#import <Foundation/Foundation.h>
#import "ClassA.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ClassA *a = [[ClassA alloc] init];
        ClassB *b = [[ClassB alloc] init];
        ClassC *c = [[ClassC alloc] init];
        
        [a initVar];
        [b initVar];
        [c initVar];
        
        [a printVar];
        [b printVar];
        [c printVar];
        
        
    }
    return 0;
}
