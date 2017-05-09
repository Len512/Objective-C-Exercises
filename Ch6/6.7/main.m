// Program to generate a table of prime numbers
// Program 6.10 has several inefficiencies. One inefficiency results from checking even numbers. 
// Because any even number greater than 2 obviously cannot be prime, the program could simply skip 
// all even numbers as possible primes and as possible divi- sors.The inner for loop is also inefficient 
// because the value of p is always divided by all values of d from 2 through p–1.You can avoid this 
// inefficiency if you add a test for the value of isPrime in the conditions of the for loop. In this manner, 
// you can set up the for loop to continue as long as no divisor is found and the value of d is less than p. 
// Modify Program 6.10 to incorporate these two changes; then run the program to verify its operation.


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int d, isPrime;
        for (int p = 2; p <= 50; ++p) {
            isPrime = 1;
            if ( p % 2 != 0 || p == 2){
                for (d = 2; d < p && isPrime; ++d){
                    if (p % d == 0){
                        isPrime = 0;
                    }
                }
                if (isPrime != 0 ){
                    NSLog(@"%i", p);
                }
            }
        }
    }
    return 0;
}
