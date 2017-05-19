// Write a program to read in an archived AddressBook and look up an entry
// based on a name supplied on the command line, like so:
// $ lookup gregory
// need to make it work as "$ lookup gregory" , now it only accepts input from the Xcode terminal using scanf

#import "AddressBook.h"

int main (int argc, const char * argv[])
{
    @autoreleasepool {
        
        AddressBook *myBook;
        NSString *filename = @"/Users/Len512/Documents/Programming/ObjC-Kochan/Ch19/Ch19/addbook.arch";
        
        char search[50];
        NSString *name;
        NSMutableArray *matches;
        AddressCard *myCard;
        
        NSLog(@"Who are we looking for?");
        scanf("%s", search);
        name = [NSString stringWithCString:search encoding:1];
        myBook = [NSKeyedUnarchiver unarchiveObjectWithFile: filename];
        
        matches = [myBook lookupAll: name];
        if ([matches count]) {
            for (myCard in matches){
                [myCard print];
            }
        }
        else {
            NSLog(@"Not found!");
        }
        
    }
    return 0;
}
