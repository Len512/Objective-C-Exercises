#ifndef AddressCard_h
#define AddressCard_h
#import <Foundation/Foundation.h>

@interface AddressCard : NSObject
{
    NSString *name;
    NSString *email;
}
@property (copy, nonatomic) NSString *name, *email;

- (void) print;
- (void) setName: (NSString *) theName andEmail: (NSString *) theEmail;
- (AddressCard *) initWithName: (NSString *) n andEmail: (NSString *) e;
- (AddressCard *) init;

@end
#endif /* AddressCard_h */
