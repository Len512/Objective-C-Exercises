#import <Foundation/Foundation.h>

// Program 5.2 to calculate the 200th triangular number 
// Rewrite Program 5.2 replacing all uses of the for statement with
// equivalent while statements. Run each program to verify that both versions are
// identical.

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, triangularNumber;
        triangularNumber = 0;
        n = 1;
        while (n <=200){
            triangularNumber += n;
            ++n;
        }
        NSLog (@"The 200th triangular number is %i", triangularNumber);
    }
    return 0;
}
