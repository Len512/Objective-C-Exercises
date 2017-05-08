#import <Foundation/Foundation.h>
#import "Ex44.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Ex44 *myExpression = [ [Ex44 alloc] init];
        [myExpression setX:2.55];
        NSLog(@"3x^3 - 5x^2 + 6 for x=2.55 evaluates to %f", [myExpression getEvalX]);
    }
    return 0;
}
