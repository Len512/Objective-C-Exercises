#import <Foundation/Foundation.h>
#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

- (id) initWith: (int) n over: (int) d {
    self = [super init];
    if (self) {
        [self setTo:n over:d];
    }
    return self;
}
- (id) init {
    return [self initWith:0 over:0];
}
- (void) setTo: (int) n over: (int) d {
    numerator = n;
    denominator = d;
}
- (void) print {
    NSLog(@" %i/%i", numerator, denominator);
}
- (NSString *) description {
    NSString *descr = [NSString stringWithFormat:@" %i / %i", numerator, denominator];
    return descr;
}
- (double) convertToNum {
    if (denominator != 0){
        return (double) numerator / denominator;
    } else {
        return NAN;
    }
}
- (void) reduce {
    int u, v, temp;
    u = numerator;
    v = denominator;
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    numerator  /= u;
    denominator /= u;
}
- (id) copyWithZone:(NSZone *)zone {
    Fraction *newFract = [[Fraction allocWithZone:zone] init];
    [newFract setTo:numerator over:denominator];
    return newFract;
}
@end
