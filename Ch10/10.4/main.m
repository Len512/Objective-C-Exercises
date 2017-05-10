// Using typedef and enumerated data types, define a type called Day with the
// possible values Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, and Saturday.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        typedef enum { Monday = 1, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday} Day;
        
        Day userDay;
        
        
        NSLog(@"Please choose a day from 1 to 7: ");
        scanf("%i", &userDay);

        switch (userDay) {
            case Monday:
            case Tuesday:
            case Wednesday:
            case Thursday:
            case Friday:
                NSLog(@"Workday... :( ");
                break;
            case Saturday:
            case Sunday:
                NSLog(@"Weekend!!!!");
                break;
            default:
                NSLog(@"Not a valid day number");
                break;
        }
    }
    return 0;
}
