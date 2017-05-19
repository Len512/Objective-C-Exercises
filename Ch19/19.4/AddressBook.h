#ifndef AddressBook_h
#define AddressBook_h

#import "AddressCard.h"

@interface AddressBook : NSObject <NSCopying, NSCoding>

@property (nonatomic, copy) NSString *bookName;
@property (nonatomic, copy) NSMutableArray *book;

- (id) initWithName: (NSString *) theName;
- (id) init;

- (long int) entries;
- (void) list;
- (void) sort;
- (void) addCard: (AddressCard *) theCard;
- (void) removeCard: (AddressCard *) theCard;
- (NSMutableArray *) lookupAll: (NSString *) theString;
- (AddressCard *) lookupByName: (NSString *) theString;
@end

#endif /* AddressBook_h */
