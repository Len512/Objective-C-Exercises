#import <Foundation/Foundation.h>
#import "Fraction.h"

static int gCounter, addCounter;

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
- (void) print {
    NSLog(@" %i/%i ", numerator, denominator);
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
- (Fraction *) add: (Fraction *) f {
    Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator * f.denominator + denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    [result reduce];
    extern int addCounter;
    ++addCounter;
    return result;
}
- (id) addUsingId: (id) f {
    Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator * [f denominator] + denominator * [f numerator];
    result.denominator = denominator * [f denominator];
    return result;
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
+ (Fraction *) allocF {
    extern int gCounter;
    ++gCounter;
    return [Fraction alloc];
}
+ (int) count {
    extern int gCounter;
    return gCounter;
}
+ (int) getAddCounter {
    extern int addCounter;
    return addCounter;
}
@end
