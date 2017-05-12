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
- (AddressCard *) lookup: (NSString *) theName {
    
    NSUInteger result = [book indexOfObjectPassingTest:^(id obj, NSUInteger idx, BOOL *stop){
        if ([[obj name] caseInsensitiveCompare:theName] == NSOrderedSame){
            *stop = YES; // found a match, one is enough
            return YES;
        } else {
            return NO; // keep looking
        }
    }];
    // see if we found a match
    if (result != NSNotFound){ // there should only be one element
        return [book objectAtIndex: result];
    } else {
        return nil;
    }
    
}
- (NSMutableArray *) lookupAll: (NSString *) theName {
    NSMutableArray *matches = [NSMutableArray array];
    
    NSIndexSet *result = [book indexesOfObjectsPassingTest:^BOOL (id obj, NSUInteger idx, BOOL *stop){
        if ([[obj name] caseInsensitiveCompare: theName] == NSOrderedSame){
            return YES;
        } else {
            return NO;
        }
    }];
    
    [matches addObjectsFromArray:[book objectsAtIndexes:result]];
    return matches;
}
- (void) removeCard: (AddressCard *) theCard {
    [book removeObjectIdenticalTo: theCard];
}
- (void) sort {
    [book sortUsingComparator: ^(id obj1, id obj2) {
        return [[obj1 name] compare: [obj2 name]];
    }];
}
@end
