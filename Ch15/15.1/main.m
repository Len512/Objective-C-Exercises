// Look up the NSDate class in your documentation.Then add a new category to NSDate called ElapsedDays.
// In that new category, add a method based on the fol- lowing method declaration:
// -(unsigned long) elapsedDays: (NSDate *) theDate;
// Have the new method return the number of elapsed days between the receiver and the argument to the method.
// Write a test program to test your new method. (Hint: Look at the ears:months:days:hours:minutes:seconds:sinceDate: method.) -- NOW DEPRECATED

#import <Foundation/Foundation.h>
#import "NSDate+ElapsedDays.h"

int main (int argc, char *argv[]){
    @autoreleasepool {
        NSDate *today = [NSDate date];
        NSDate *fromDate = [NSDate dateWithTimeIntervalSinceNow:-3600*24*11333];
        unsigned long daysElapsed;
        
        daysElapsed = [today elapsedDays: fromDate];
        NSLog(@"Days elapsed: %lu ", daysElapsed);
    }
    return 0;
}
