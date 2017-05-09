#import <Foundation/Foundation.h>
#import "Circle.h"
#import <math.h>

@implementation Circle

@synthesize radius;

- (float) circumferance {
    return 2 * M_PI * radius;
}
- (float) area {
    return M_PI * radius * radius;
}

@end
