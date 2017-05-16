// Test program to create an address card, set its values, and display it

#import <Foundation/Foundation.h>
#import "AddressCard.h"

int main (int argc, char *argv[]){
    @autoreleasepool {
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        AddressCard *card1 = [[AddressCard alloc] init];
        
        [card1 setName:aName];
        [card1 setEmail:aEmail];
        
        [card1 print];
        
    }
    return 0;
}
