// AddressCard implementation with synthesised accessor methods

#import <Foundation/Foundation.h>
#import "AddressCard.h"

int main (int argc, char *argv[]){
    @autoreleasepool {
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        NSString *bName = @"Tony Iannino";
        NSString *bEmail = @"tony.iannino@tech.com";
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        
        [card1 setName:aName andEmail:aEmail];
        [card2 setName:bName andEmail:bEmail];
        
        [card1 print];
        [card2 print];
        
    }
    return 0;
}
