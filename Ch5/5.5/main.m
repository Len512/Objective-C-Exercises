#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, number, triangularNumber, counter, numberOfTries;
        
        NSLog(@"How many triangular numbers do you need to calculate? ");
        scanf("%i", &numberOfTries);
        for (counter = 1; counter <= numberOfTries; ++counter){
            NSLog(@"What triangular number do you want? ");
            scanf("%i", &number);
            triangularNumber = 0;
            for (n = 1; n <= number; ++n) {
                triangularNumber += n;
            }
            NSLog(@"Triangular number %i is %i", number, triangularNumber);
        }
    }
    return 0;
}
