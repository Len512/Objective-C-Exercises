#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n;
        
        NSLog(@"Table of n and n^2");
        NSLog(@"n   n^2");
        NSLog(@"--  ---");
        
        for (n=1; n <= 10; ++n){
            NSLog(@"%2i  %3i", n, n*n);
        }
        
    
    }
    return 0;
}
