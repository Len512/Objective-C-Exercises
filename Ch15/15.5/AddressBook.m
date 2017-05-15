#import <Foundation/Foundation.h>
#import "AddressBook.h"

@implementation AddressBook
@synthesize bookName;
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
- (void) removeCard: (AddressCard *) theCard {
    [book removeObjectIdenticalTo: theCard];
}
- (long int) entries {
    return [book count];
}
- (void) list {
    NSLog(@"======== Contents of: %@ =========", bookName);
    for ( AddressCard *theCard in book){
        NSLog(@"%-20s   %-32s", [theCard.name UTF8String], [theCard.email UTF8String]);
        NSLog(@"%-20s", [theCard.address UTF8String]);
        NSLog(@"%-20s", [theCard.country UTF8String]);
        NSLog(@"%-20s", [theCard.phoneNumber UTF8String]);
        NSLog(@"=====================================================");
    }
}
- (void) sort {
    [book sortUsingSelector:@selector(compareNames:)];
}
- (NSMutableArray *) lookup: (NSString *) theName {
    
    NSMutableArray *matches = [NSMutableArray array];
    for (AddressCard *nextCard in book){
        NSArray *properties = [nextCard props];
        NSString *prop;
        // loop through properties and search for string theName
        for (prop in properties) {
            if ([[nextCard valueForKey:prop] localizedCaseInsensitiveContainsString:theName]){
                [matches addObject:nextCard];
            }
        }
        
    }
    return [matches count] ? matches: nil;
}
@end
