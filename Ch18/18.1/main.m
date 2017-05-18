// Implement a copy method for the AddressBook class according to the NSCopying protocol.
// Would it make sense to also implement a mutableCopy method? Why or why not?

#import <Foundation/Foundation.h>
#import "AddressBook.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        NSString *bName = @"Tony Iannino";
        NSString *bEmail = @"tony.iannino@techfitness.com";
        NSString *cName = @"Stephen Kochan";
        NSString *cEmail = @"steve@classroomM.com";
        NSString *dName = @"Jamie Baker";
        NSString *dEmail = @"jbaker@classroomM.com";
        
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        AddressCard *card5 = [[AddressCard alloc] init];
        
        AddressBook *myBook = [[AddressBook alloc] init];
        AddressBook *myBookCopy = [[AddressBook alloc] init];
        
        [card1 setName: aName andEmail: aEmail];
        [card2 setName: bName andEmail: bEmail];
        [card3 setName: cName andEmail: cEmail];
        [card4 setName: dName andEmail: dEmail];
        card5 = [card4 copy];
        
        myBook = [myBook initWithName:@"Len512's book"];
        [myBook addCard:card1];
        [myBook addCard:card2];
        [myBook addCard:card3];
        
        [myBook list];
        myBookCopy = [myBook copy];
        [myBookCopy list];
        
        [myBook removeCard:card3];
        [myBook list];
        [myBookCopy list];
        
        [myBookCopy addCard:card5];
        [myBook list];
        [myBookCopy list];
        
        [card5 setName:@"Random Name" andEmail:@"Random Email"];
        [myBook addCard:card4];
        [myBook list];
        [myBookCopy list];
       
    }
    return 0;
}
