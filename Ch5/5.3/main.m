#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int factorial = 1;
        
        NSLog(@"Table of Factorials");
        NSLog(@"n   Factorials");
        NSLog(@"--  ----------");
        
        
        for (int n=1; n <= 10; ++n){
            factorial *= n;
            NSLog(@"%2i     %7i", n, factorial);
        }
    }
    return 0;
}
