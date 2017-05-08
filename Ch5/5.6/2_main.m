// Program to generate a table of triangular numbers
// Rewrite Program 5.3, replacing all uses of the for statement with
// equivalent while statements. Run each program to verify that both versions are
// identical.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, triangularNumber;
        NSLog (@"TABLE OF TRIANGULAR NUMBERS");
        NSLog (@" n Sum from 1 to n");
        NSLog (@"-- --------");
        triangularNumber = 0;
        n = 1;
        
        while (n <= 10){
            triangularNumber += n;
            NSLog (@"%2i %i", n, triangularNumber);
            ++n;
        }
    }
    return 0;
}
