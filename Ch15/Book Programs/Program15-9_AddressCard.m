#import <Foundation/Foundation.h>
#import "AddressCard.h"

@implementation AddressCard

@synthesize name, email;

- (AddressCard *) initWithName: (NSString *) n andEmail: (NSString *) e {
    self = [super init];
    if (self) {
        [self setName:n andEmail:e];
    }
    return self;
}
- (AddressCard *) init {
    
    return [[AddressCard alloc] initWithName:@"" andEmail:@""];
}

- (void) print {
    NSLog(@"=====================================");
    NSLog(@"|                                   |");
    NSLog(@"|   %-31s |", [name UTF8String]);
    NSLog(@"|   %-31s |", [email UTF8String]);
    NSLog(@"|                                   |");
    NSLog(@"|                                   |");
    NSLog(@"|                                   |");
    NSLog(@"|          O             O          |");
    NSLog(@"=====================================");
}
- (void) setName: (NSString *) theName andEmail: (NSString *) theEmail {
    self.name = theName;
    self.email = theEmail;
}

@end
