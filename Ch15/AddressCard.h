#ifndef AddressCard_h
#define AddressCard_h
#import <Foundation/Foundation.h>

@interface AddressCard : NSObject
{
    NSString *firstName;
    NSString *lastName;
    NSString *email;
    NSString *address;
    NSString *country;
    NSString *phoneNumber;
    
}
@property NSString *firstName, *email, *lastName, *address, *country, *phoneNumber;

- (id) initWithFirstName: (NSString *) fn withLastName: (NSString *) ln andEmail: (NSString *) e andAddress: (NSString *) a andCountry: (NSString *) c andPhoneNumber: (NSString *) p;
- (id) init;
- (void) print;
- (void) setFirstName: (NSString *) fn withLastName: (NSString *) ln andEmail: (NSString *) e andAddress: (NSString *) a andCountry: (NSString *) c andPhoneNumber: (NSString *) p;
- (NSString *) name;
- (NSComparisonResult) compareNames: (id) element;

@end
#endif /* AddressCard_h */
