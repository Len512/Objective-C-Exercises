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
- (void) addCard: (AddressCard *) theCard;
- (long int) entries;
- (void) list;
- (AddressCard *) lookup: (NSString *) theName;
- (void) removeCard: (AddressCard *) theCard;
@end

#endif /* AddressBook_h */
