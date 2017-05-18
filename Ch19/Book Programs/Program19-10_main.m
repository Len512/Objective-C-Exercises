// Restoring the data from your archive file

#import <Foundation/Foundation.h>
#import "Foo.h"
#import "AddressBook.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Foo *myFoo1 = [[Foo alloc] init];
        NSData *dataArea;
        NSKeyedUnarchiver *unarchiver;
        AddressBook *myBook;
        NSString *filename = @"/Users/eleni/Documents/Programming/ObjC-Kochan/Ch19/Ch19/myArchive";
        
        //Read in the archive and connect an NSKeyedUnarchiver object to it
        dataArea = [NSData dataWithContentsOfFile:filename];
        if (!dataArea){
            NSLog(@"Can't read back archive file");
            return 1;
        }
        
        unarchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData:dataArea];
        
        // Decode the objects we previously stored in the archive
        myBook = [unarchiver decodeObjectForKey:@"myAddrBook"];
        myFoo1 = [unarchiver decodeObjectForKey:@"myFoo1"];
        [unarchiver finishDecoding];
        
        [myBook list];
        NSLog(@"\n%@\n%i\%g", [myFoo1 strVal], [myFoo1 intVal], [myFoo1 floatVal]);
    }
    return 0;
}
