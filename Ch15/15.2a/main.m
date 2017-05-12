// Modify the lookup: method developed in this chapter for the AddressBook class
// so that partial matches of a name can be made.The message expression [myBook lookup: @"steve"]
// should match an entry that contains the string steve anywhere within the name.
// Make the change to the version that uses the sortedArrayUsingSelector: method (case a)

#import <Foundation/Foundation.h>
#import "AddressBook.h"

int main (int argc, char *argv[]){
    @autoreleasepool {
        
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        NSString *bName = @"Tony Iannino";
        NSString *bEmail = @"tony.iannino@tech.com";
        NSString *cName = @"Stephen Kochan";
        NSString *cEmail = @"steve@classroomM.com";
        NSString *dName = @"Jamie Baker";
        NSString *dEmail = @"jbaker@classroomM.com";
        
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        
        // Set up a new address book
        AddressBook *myBook = [[AddressBook alloc] initWithName:@"Len512's address book"];
        AddressCard *myCard;
        
        // Set up four new address cards
        [card1 setName: aName andEmail: aEmail];
        [card2 setName: bName andEmail: bEmail];
        [card3 setName: cName andEmail: cEmail];
        [card4 setName: dName andEmail: dEmail];
        
        // Add the cards to the address book
        [myBook addCard: card1];
        [myBook addCard: card2];
        [myBook addCard: card3];
        [myBook addCard: card4];
        
        // Look up a person by name
        NSLog(@"Looking up steve");
        myCard  = [myBook lookup:@"steve"];
        if (myCard != nil) {
            [myCard print];
        } else {
            NSLog(@"Not found!");
        }
        NSLog(@"Looking up julia");
        myCard  = [myBook lookup:@"julia"];
        if (myCard != nil) {
            [myCard print];
        } else {
            NSLog(@"Not found!");
        }
        
    }
    return 0;
}
