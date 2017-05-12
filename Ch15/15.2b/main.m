// Modify the lookup: method developed in this chapter for the AddressBook class
// so that partial matches of a name can be made.The message expression [myBook lookup: @"steve"]
// should match an entry that contains the string steve anywhere within the name.
// Make the change to the version that uses the indexesOfObjectsPassingTest: method (case b)

#import <Foundation/Foundation.h>
#import "AddressBook.h"

void (^printSearchResults)(AddressBook *, NSString *) = ^(AddressBook *myBook, NSString *theName){
    NSLog(@"Looking up %@ in %@", theName, [myBook bookName]);
    NSMutableArray *search = [myBook lookup:theName];
    AddressCard *myCard;
    if ([search count]){
        for (myCard in search){
            [myCard print];
        }
    } else {
        NSLog(@"%@ not found!", theName);
    }
};

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
        
        printSearchResults(myBook, @"steve");
        printSearchResults(myBook, @"julia");
        printSearchResults(myBook, @"koch");
    }
    return 0;
}
