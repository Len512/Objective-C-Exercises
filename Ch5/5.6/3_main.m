// Rewrite Program 5.5, replacing all uses of the for statement with
// equivalent while statements. Run each program to verify that both versions are
// identical.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, number, triangularNumber;
        NSLog (@"What triangular number do you want?");
        scanf ("%i", &number);
        triangularNumber = 0;
        n = 1;
        
        while (n <= number){
            triangularNumber += n;
            ++n;
        }
        NSLog (@"Triangular number %i is %i\n", number, triangularNumber);
    }
    return 0;
}
