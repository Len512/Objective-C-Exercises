// Using the result from exercise 2, modify the lookup: method to search the address book for all matches.
// Have the method return an array of all such matching address cards, or nil if no match is made.
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
        NSMutableArray *matches;
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
        matches  = [myBook lookup:@"steve"];
        if ([matches count]) {
            for (myCard in matches){
                [myCard print];
            }
        }
        NSLog(@"Looking up kochan");
        matches  = [myBook lookup:@"kochan"];
        if ([matches count]) {
            for (myCard in matches){
                [myCard print];
            }
        }
    }
    return 0;
}
