#import "NSDate+ElapsedDays.h"

@implementation NSDate (ElapsedDays)

- (unsigned long) elapsedDays:(NSDate *) theDate {
    unsigned long daysElapsed = [self timeIntervalSinceDate: theDate];
    return (unsigned long) daysElapsed / (60 * 60 * 24);
}
@end
