// In Chapter 15, Program 15.7 generated a table of prime numbers.
// Modify that program to write the resulting array as an XML property list
// to the file primes.pl. Then examine the contents of the file.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int d, isPrime, p;
        NSMutableArray *primes = [NSMutableArray array];
        NSString *filename = @"/Users/Len512/Documents/Programming/ObjC-Kochan/Ch19/Ch19/primes.pl";
        for (p = 2; p <= 50; ++p) {
            isPrime = 1;
            if ( p % 2 != 0 || p == 2){
                for (d = 2; d < p && isPrime; ++d){
                    if (p % d == 0){
                        isPrime = 0;
                    }
                }
                if (isPrime != 0 ){
                    [primes addObject: [NSNumber numberWithInteger:p]];
                }
            }
        }
        if ([primes writeToFile:filename atomically:YES] == NO){
            NSLog(@"Save to file failed!");
        }
    }
    return 0;
}
