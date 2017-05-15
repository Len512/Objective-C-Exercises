#import <Foundation/Foundation.h>
#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;
- (id) initWith: (int) n over: (int) d {
    self = [super init];
    if (self){
        [self setTo:n over:d];
    }
    return self;
}
- (id) init {
    return [self initWith:0 over:0];
}
- (void) print {
    NSLog(@" %i/%i", numerator, denominator);
}
- (void) setTo: (int) n over: (int) d {
    numerator = n;
    denominator = d;
}
- (double) convertToNum {
    if (denominator != 0) {
        return (double) numerator / denominator;
    } else {
        return NAN;
    }
}
- (void) add: (Fraction *) f {
    numerator = numerator * f.denominator + denominator * f.numerator;
    denominator = denominator * f.denominator;
}
- (void) reduce {
    int u = numerator;
    int v = denominator;
    int temp;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    numerator /= u;
    denominator /= u;
}
- (NSString *) description {
    return [NSString stringWithFormat:@"%i/%i", numerator, denominator];
}

@end
