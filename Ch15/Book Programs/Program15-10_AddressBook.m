#import <Foundation/Foundation.h>
#import "AddressBook.h"

@implementation AddressBook

- (id) initWithName:(NSString *) name {
    self = [super init];
    if (self) {
        bookName = [[NSString alloc] initWithString: name];
        book = [[NSMutableArray alloc] init];
    }
    return self;
}
- (id) init {
    return [self initWithName:@"NoName"];
}
- (void) addCard: (AddressCard *) theCard {
    [book addObject:theCard];
}
- (long int) entries {
    return [book count];
}
- (void) list {
    NSLog(@"======== Contents of: %@ =========", bookName);
    for ( AddressCard *theCard in book){
        NSLog(@"%-20s   %-32s", [theCard.name UTF8String], [theCard.email UTF8String]);
        NSLog(@"=====================================================");
    }
}

@end
