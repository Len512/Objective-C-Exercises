// Write a program that asks the user to type in two integer values.Test these two
// numbers to determine whether the first is evenly divisible by the second and then
// display an appropriate message at the terminal.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int value1, value2;
        NSLog(@"Please type in two integer numbers seperated by one space: ");
        scanf("%i %i", &value1, &value2);
        
        if (value2 == 0) {
            NSLog(@"Division by zero!");
        } else if (value1 % value2 == 0) {
            NSLog(@"%i is evenly divided by %i", value1, value2);
        } else {
            NSLog(@"%i is not divided evenly by %i", value1, value2);
        }
        
        
        
    }
    return 0;
}
