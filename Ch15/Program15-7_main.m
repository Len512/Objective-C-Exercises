// Creates an array of 10 number objects, whose values range from 0 through 9 and then print them

#import <Foundation/Foundation.h>

int main (int argc, char *argv[]){
    @autoreleasepool {
        
        NSMutableArray *numbers = [NSMutableArray array];
        NSNumber       *myNumber;
        int            i;
        
        // Create an array with the numbers 0-9
        for (i = 0; i < 10; ++i){
            myNumber = [NSNumber numberWithInteger:i];
            [numbers addObject:myNumber];
        }
        
        // Sequence through the array and display the values
        for (i = 0; i < 10; ++i) {
            myNumber = [numbers objectAtIndex:i];
            NSLog(@"%@", myNumber);
        }
        
        // Look how NSLog can display it with a single %@ format
        NSLog(@"======== Using a single NSLog");
        NSLog(@"%@", numbers);
    }
    return 0;
}
