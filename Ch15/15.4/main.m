// Add new fields of your choice to the AddressCard class. Some suggestions are separating the name field
// into first and last name fields, and adding address (perhaps with separate state, city, zip, and country
// fields) and phone number fields.Write appropriate setter and getter methods, and ensure that the print and
// list methods properly display the fields.

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
        
        NSString *aFirstName = @"Julia";
        NSString *aLastName = @"Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        NSString *aAddress = @"ABC";
        NSString *aCountry = @"A Country";
        NSString *aPhone = @"123";
        
        NSString *bFirstName = @"Tony";
        NSString *bLastName = @"Iannino";
        NSString *bEmail = @"tony.iannino@tech.com";
        NSString *bAddress = @"DEF";
        NSString *bCountry = @"B Country";
        NSString *bPhone = @"234";
        
        NSString *cFirstName = @"Stephen";
        NSString *cLastName = @"Kochan";
        NSString *cEmail = @"steve@classroomM.com";
        NSString *cAddress = @"GHI";
        NSString *cCountry = @"C Country";
        NSString *cPhone = @"345";
        
        NSString *dFirstName = @"Jamie";
        NSString *dLastName = @"Baker";
        NSString *dEmail = @"jbaker@classroomM.com";
        NSString *dAddress = @"JKL";
        NSString *dCountry = @"D Country";
        NSString *dPhone = @"456";
        
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        
        // Set up a new address book
        AddressBook *myBook = [[AddressBook alloc] initWithName:@"Len512's address book"];
        // Set up four new address cards
        [card1 setFirstName: aFirstName withLastName:aLastName andEmail: aEmail andAddress:aAddress andCountry:aCountry andPhoneNumber:aPhone];
        [card2 setFirstName: bFirstName withLastName:bLastName andEmail: bEmail andAddress:bAddress andCountry:bCountry andPhoneNumber:bPhone];
        [card3 setFirstName: cFirstName withLastName:cLastName andEmail: cEmail andAddress:cAddress andCountry:cCountry andPhoneNumber:cPhone];
        [card4 setFirstName: dFirstName withLastName:dLastName andEmail: dEmail andAddress:dAddress andCountry:dCountry andPhoneNumber:dPhone];
        
        // Add the cards to the address book
        [myBook addCard: card1];
        [myBook addCard: card2];
        [myBook addCard: card3];
        [myBook addCard: card4];
        
        printSearchResults(myBook, @"steve");
        printSearchResults(myBook, @"julia");
        printSearchResults(myBook, @"koch");
        [myBook list];
    }
    return 0;
}
