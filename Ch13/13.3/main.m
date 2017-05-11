// An algorithm known as the Sieve of Erastosthenes can generate prime numbers.
// The algorithm for this procedure is presented here.Write a program that implements this algorithm.
// Have the program find all prime numbers up to n = 150.What can you say about this algorithm as compared
// to the ones used in the text for calculat- ing prime numbers?
// Step 1: Define an array of integers P. Set all elements Pi to 0, 2 <= i <= n.
// Step 2: Set i to 2.
// Step 3: If i > n, the algorithm terminates.
// Step 4: If Pi is 0, i is prime.
// Step 5: For all positive integer values of j, such that i j<=n, set Pixj to 1.
// Step 6:Add 1 to i and go to step 3.

#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int i, j, n;
        n = 150;
        int P[n];
        
        for (i = 2; i <= n; ++i) {
            P[i] = 0;
        }
        for (i = 2; i <= n; ++i) {
            if (P[i] == 0){
                for (j = 2; i * j <= n; ++j){
                    P[i * j] = 1;
                }
            }
        }
        for (i = 2; i < n; ++i) {
            if (P[i] == 0) {
                NSLog(@"%i" , i);
            }
        }
        
    }
    return 0;
}
