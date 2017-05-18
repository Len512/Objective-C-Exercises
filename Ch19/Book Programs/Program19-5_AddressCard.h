#ifndef AddressCard_h
#define AddressCard_h

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject <NSCopying, NSCoding>
{
    NSString *name, *email;
}
@property (nonatomic, copy) NSString *name, *email;
- (void) setName: (NSString *) theName andEmail: (NSString *) theEmail;
- (void) print;
- (NSComparisonResult) compareNames: (id) element;
@end

#endif /* AddressCard_h */
