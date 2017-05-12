#ifndef AddressBook_h
#define AddressBook_h

#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface AddressBook : NSObject
{
    NSString       *bookName;
    NSMutableArray *book;
}
- (id) initWithName: (NSString *) name;
- (id) init;

- (long int) entries;
- (void) list;
- (void) sort;

- (void) addCard: (AddressCard *) theCard;
- (void) removeCard: (AddressCard *) theCard;

- (AddressCard *) lookup: (NSString *) theName;
@end

#endif /* AddressBook_h */
