#import <Foundation/Foundation.h>
#import "AddressCard.h"

@implementation AddressCard

@synthesize name, email;

- (id) initWithName: (NSString *) n andEmail: (NSString *) e {
    self = [super init];
    if (self) {
        [self setName:n andEmail:e];
    }
    return self;
}
- (id) init {
    
    return [[AddressCard alloc] initWithName:@"NoName" andEmail:@"NoEmail"];
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
- (NSComparisonResult) compareNames: (id) element {
    return [name compare:[element name]];

} 
@end
