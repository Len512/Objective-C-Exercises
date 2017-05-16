// Set up an array to store the names of the months of the year and then print them

#import <Foundation/Foundation.h>

int main (int argc, char *argv[]){
    @autoreleasepool {
        
        int i;
        NSArray *monthNames = [NSArray arrayWithObjects:@"January", @"February", @"March", @"April", @"May", @"June", @"July", @"August", @"September", @"October", @"November", @"December", nil];
        
        // Now list all the elements in the array
        NSLog(@"Month    Name");
        NSLog(@"=====    ====");
        
        for (i = 0; i < 12; ++i) {
            NSLog(@" %4i    %@", i+1, [monthNames objectAtIndex:i]);
        }
    }
    return 0;
}
