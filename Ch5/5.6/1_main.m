#import <Foundation/Foundation.h>
// Program 5.2 to calculate the 200th triangular number
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
