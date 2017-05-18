#ifndef AddressCard_h
#define AddressCard_h

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject <NSCopying>

@property (nonatomic, copy) NSString *name, *email;
- (id) initWithName:(NSString *) n andEmail:(NSString *) e;
- (id) init;
- (void) setName: (NSString *) theName andEmail: (NSString *) theEmail;
- (void) print;
- (NSComparisonResult) compareNames: (id) element;

@end

#endif /* AddressCard_h */
