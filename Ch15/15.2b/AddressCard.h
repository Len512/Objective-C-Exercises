#ifndef AddressCard_h
#define AddressCard_h
#import <Foundation/Foundation.h>

@interface AddressCard : NSObject
{
    NSString *name;
    NSString *email;
}
@property (copy, nonatomic) NSString *name, *email;
- (id) initWithName: (NSString *) n andEmail: (NSString *) e;
- (id) init;
- (void) print;
- (void) setName: (NSString *) theName andEmail: (NSString *) theEmail;
- (NSComparisonResult) compareNames: (id) element;

@end
#endif /* AddressCard_h */
