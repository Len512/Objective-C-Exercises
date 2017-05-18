#import <Foundation/Foundation.h>
#import "AddressBook.h"

@implementation AddressBook

@synthesize book, bookName;

- (id) initWithName: (NSString *) theName {
    self = [super init];
    if (self){
        bookName = [NSString stringWithString:theName];
        book = [NSMutableArray array];
    }
    return self;
}
- (id) init {
    return [self initWithName:@""];
}

- (long int) entries {
    return [book count];
}
- (void) list {
    NSLog (@"======== Contents of: %@ =========", bookName);
    for ( AddressCard *theCard in book ){
        NSLog (@"%-20s %-32s", [theCard.name UTF8String], [theCard.email UTF8String]);
    }
    NSLog (@"==================================================");
}
- (void) sort {
    [book sortUsingSelector:@selector(compareNames:)];
}
// Here I should add checks for the existance of card before adding/removing
- (void) addCard: (AddressCard *) theCard {
    [book addObject:theCard];
}
- (void) removeCard: (AddressCard *) theCard {
    [book removeObjectIdenticalTo:theCard];
}
- (NSMutableArray *) lookupAll: (NSString *) theString {
    NSMutableArray *matches = [NSMutableArray array];
    for (AddressCard *nextCard in book){
        if ([nextCard.name localizedCaseInsensitiveContainsString:theString]){
            [matches addObject:nextCard];
        }
    }
    return matches;
}
- (AddressCard *) lookupByName: (NSString *) theString {
    for (AddressCard *nextCard in book){
        if ([nextCard.name localizedCaseInsensitiveContainsString:theString]){
            return nextCard;
        }
    }
    return nil;
}
- (id) copyWithZone: (NSZone *) zone {
    id bookCopy = [[[self class] allocWithZone: zone] init];
    [bookCopy setBookName: bookName];
    for (AddressCard *nextCard in book){
        [bookCopy addCard:nextCard];
    }
    return bookCopy;
}
@end
