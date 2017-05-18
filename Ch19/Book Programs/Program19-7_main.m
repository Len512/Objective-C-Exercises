// Program 19.7 shows how you can read the archive into memory to set up the address book from a file.

#import <Foundation/Foundation.h>
#import "AddressBook.h"
#import "AddressCard.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *filename = @"/Users/Len512/Documents/Programming/ObjC-Kochan/Ch19/Ch19/addbook.arch";
        
        AddressBook *myBook;
        myBook = [NSKeyedUnarchiver unarchiveObjectWithFile: filename];
        
        [myBook list];
    }
    return 0;
}
