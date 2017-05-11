// Write a typedef definition for a struct date called Date that enables you to make declarations such as
// Date todaysDate;
// in your program.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        typedef struct date {
            int day;
            int month;
            int year;
        } Date;
        Date todaysDate;
        todaysDate.day = 11;
        todaysDate.month = 5;
        todaysDate.year = 2017;
        
        NSLog(@"Today is %i/%i/%i", todaysDate.day, todaysDate.month, todaysDate.year);
    }
    return 0;
}
