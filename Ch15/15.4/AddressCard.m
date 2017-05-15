#import <Foundation/Foundation.h>
#import "AddressCard.h"

@implementation AddressCard

@synthesize firstName, lastName, email, address, country, phoneNumber;

- (id) initWithFirstName: (NSString *) fn withLastName: (NSString *) ln andEmail: (NSString *) e andAddress: (NSString *) a andCountry: (NSString *) c andPhoneNumber: (NSString *) p {
    self = [super init];
    if (self) {
        [self setFirstName:fn withLastName:ln andEmail:e andAddress: a andCountry: c andPhoneNumber: (NSString *) p];
    }
    return self;
}
- (id) init {
    
    return [[AddressCard alloc] initWithFirstName:@"NoFirstName" withLastName: @"NoLastName" andEmail:@"NoEmail" andAddress: @"NoAddress" andCountry: @"NoCountry" andPhoneNumber: @"NoPhoneNumber"];
}
- (NSString *) name {
    NSMutableString *name = [[NSMutableString alloc] initWithString:firstName];
    [name appendString:[@" " stringByAppendingString:lastName]];
    return name;
}
- (void) print {
    NSString *name = [self name];
    NSLog(@"=====================================");
    NSLog(@"|                                   |");
    NSLog(@"|   %-31s |", [name UTF8String]);
    NSLog(@"|   %-31s |", [email UTF8String]);
    NSLog(@"|   %-31s |", [address UTF8String]);
    NSLog(@"|   %-31s |", [country UTF8String]);
    NSLog(@"|   %-31s |", [phoneNumber UTF8String]);
    NSLog(@"|                                   |");
    NSLog(@"|                                   |");
    NSLog(@"|                                   |");
    NSLog(@"|          O             O          |");
    NSLog(@"=====================================");
}
- (void) setFirstName: (NSString *) fn withLastName: (NSString *) ln andEmail: (NSString *) e andAddress: (NSString *) a andCountry: (NSString *) c andPhoneNumber: (NSString *) p {
    self.firstName = fn;
    self.lastName = ln;
    self.email = e;
    self.address = a;
    self.country = c;
    self.phoneNumber = p;
}
- (NSComparisonResult) compareNames: (id) element {
    NSString *name = [self name];
    return [name compare:[element name]];
    
}
@end
