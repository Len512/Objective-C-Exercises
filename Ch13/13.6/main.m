// As noted in the text, defining a Date class instead of a date structure is more con- sistent
// with the notion of object-oriented programming. Define such a class with appropriate setter and
// getter methods.Also add a method called dateUpdate to return the day after its argument.
// Do you see any advantages of defining a Date as a class instead of as a structure? Do you see any disadvantages?

#import <Foundation/Foundation.h>
#import "Date.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Date *today = [[Date alloc] init];
        Date *nextDay = [[Date alloc] init];
        
        [today setDateWithDay:28 andMonth:2 andYear:2000];
        nextDay = [today dateUpdate:today];
        [today print];
        [nextDay print];
        
        [today setDateWithDay:29 andMonth:2 andYear:2000];
        nextDay = [today dateUpdate:today];
        [today print];
        [nextDay print];
        
        [today setDateWithDay:31 andMonth:12 andYear:2017];
        nextDay = [today dateUpdate:today];
        [today print];
        [nextDay print];
        
        [today setDateWithDay:30 andMonth:1 andYear:2010];
        nextDay = [today dateUpdate:today];
        [today print];
        [nextDay print];
        
        [today setDateWithDay:31 andMonth:1 andYear:2017];
        nextDay = [today dateUpdate:today];
        [today print];
        [nextDay print];
        
    }
    return 0;
}
