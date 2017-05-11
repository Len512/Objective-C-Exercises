#define AND &&
#define OR ||
#import <Foundation/Foundation.h>
#import "Date.h"

@implementation Date

@synthesize day, month, year;

- (void) setDateWithDay: (int) d andMonth: (int) m andYear: (int) y {
    day = d;
    month = m;
    year = y;
    
}
- (void) print {
    NSLog(@" %i / %i / %i", day, month, year);
}
- (Date *) dateUpdate: (Date *) date {
    Date *result = [[Date alloc] init];
    BOOL isLeap = (date.year % 4 == 0 AND date.year % 100 != 0) OR (date.year % 400 == 0) ? YES : NO;
    
    // if month is december and day is 31 then next day is 1/1 of next year
    if (date.month == 12 AND date.day == 31){
        result.month = 1;
        result.day = 1;
        result.year = date.year + 1;
    } else if (date.month == 2) {
        if (date.day == 28 AND !isLeap OR date.day == 29) {
            result.month = 3;
            result.day = 1;
            result.year = date.year;
        } else {
            result.month = 2;
            result.day = date.day + 1;
            result.year = date.year;
        }
    } else if (((date.month == 4 OR date.month == 6 OR date.month == 9 OR date.month == 11) AND date.day == 30) OR (date.month == 1 OR date.month == 3 OR date.month == 5 OR date.month == 7 OR date.month == 8 OR date.month == 10) AND date.day == 31) {
        result.day = 1;
        result.month = date.month + 1;
        result.year = date.year;
    } else {
        result.day = date.day + 1;
        result.month = date.month;
        result.year = date.year;
    }
    return result;
}

@end
