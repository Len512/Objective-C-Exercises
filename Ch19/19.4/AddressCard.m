#import "AddressCard.h"

@implementation AddressCard

@synthesize name, email;

- (id) initWithName:(NSString *)n andEmail:(NSString *)e {
    self = [super init];
    if (self){
        [self setName:n andEmail:e];
    }
    return self;
}

- (id) init {
    return [[AddressCard alloc] initWithName:@"" andEmail:@""];
}
- (void) setName: (NSString *) theName andEmail: (NSString *) theEmail {
    name = theName;
    email = theEmail;
}
- (void) print {
    NSLog (@"====================================");
    NSLog (@"|                                  ￼|");
    NSLog (@"|  %-31s |", [name UTF8String]);
    NSLog (@"|  %-31s |", [email UTF8String]);
    NSLog (@"|                                  ￼|");
    NSLog (@"|                                  ￼|");
    NSLog (@"|                                  ￼|");
    NSLog (@"|      O                    O      ￼|");
    NSLog (@"====================================");
}

- (NSComparisonResult) compareNames: (id) element {
    return [name compare: [element name]];
}
- (id) copyWithZone: (NSZone *) zone {
    id newCard = [[[self class] allocWithZone:zone] init];
    [newCard setName: name andEmail:email];
    return newCard;
}
- (void) encodeWithCoder: (NSCoder *) encoder {
    [encoder encodeObject:name forKey:@"AddressCardName"];
    [encoder encodeObject:email forKey:@"AddressCardEmail"];
}
- (id) initWithCoder: (NSCoder *) decoder {
    name = [decoder decodeObjectForKey:@"AddressCardName"];
    email = [decoder decodeObjectForKey:@"AddressCardEmail"];
    return self;
}
@end
