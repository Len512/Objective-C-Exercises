// archive your address book and one of your Foo objects in the same file.
// Assume for this example that you’ve added keyed archiving methods to the
// AddressBook and AddressCard classes

#import <Foundation/Foundation.h>
#import "Foo.h"
#import "AddressBook.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Foo *myFoo1 = [[Foo alloc] init];
        NSMutableData *dataArea;
        NSKeyedArchiver *archiver;
        AddressBook *myBook;
        NSString *filename = @"/Users/Len512/Documents/Programming/ObjC-Kochan/Ch19/Ch19/myArchive";
        
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        NSString *bName = @"Tony Iannino";
        NSString *bEmail = @"tony.iannino@techfitness.com";
        NSString *cName = @"Stephen Kochan";
        NSString *cEmail = @"steve@steve_kochan.com";
        NSString *dName = @"Jamie Baker";
        NSString *dEmail = @"jbaker@hitmail.com";
        
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        
        // First set up four address cards
        [card1 setName: aName andEmail: aEmail];
        [card2 setName: bName andEmail: bEmail];
        [card3 setName: cName andEmail: cEmail];
        [card4 setName: dName andEmail: dEmail];
        
        myBook = [myBook initWithName: @"Steve’s Address Book"];
        // Add some cards to the address book
        [myBook addCard: card1];
        [myBook addCard: card2];
        [myBook addCard: card3];
        [myBook addCard: card4];

        
        
        [myFoo1 setStrVal:@"This is a string"];
        [myFoo1 setIntVal:12345];
        [myFoo1 setFloatVal:98.6];
        
        // Set up a data area and connect it to an NSKeyedArchiver object
        dataArea = [NSMutableData data];
        archiver = [[NSKeyedArchiver alloc] initForWritingWithMutableData:dataArea];
        
        // Now we can begin to archive objects
        [archiver encodeObject:myBook forKey:@"myAddrBook"];
        [archiver encodeObject:myFoo1 forKey:@"myFoo1"];
        [archiver finishEncoding];
        
        // Write the archived data area into a file
        if ([dataArea writeToFile:filename atomically:YES] == NO){
            NSLog(@"Archiving failed");
        }
        
    }
    return 0;
}
