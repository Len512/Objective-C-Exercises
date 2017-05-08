#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, triangularNumber;
        
        NSLog(@"Table of Triangular Numbers");
        NSLog(@"n   Triangular");
        NSLog(@"--  ----------");
        
        
        for (n=5; n <= 50; n=n+5){
            triangularNumber = n * (n + 1) / 2;
            NSLog(@"%2i        %4i", n, triangularNumber);
        }
    }
    return 0;
}
