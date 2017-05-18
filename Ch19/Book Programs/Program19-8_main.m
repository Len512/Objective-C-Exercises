// In Program 19.8, a Foo object is created, archived to a file, unarchived, and then displayed.

#import <Foundation/Foundation.h>
#import "Foo.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Foo *myFoo1 = [[Foo alloc] init];
        Foo *myFoo2;
        NSString *filename = @"/Users/Len512/Documents/Programming/ObjC-Kochan/Ch19/Ch19/foo.arch";
        [myFoo1 setStrVal:@"This is a string"];
        [myFoo1 setIntVal:12345];
        [myFoo1 setFloatVal:98.6];
        
        [NSKeyedArchiver archiveRootObject:myFoo1 toFile:filename];
        myFoo2 = [NSKeyedUnarchiver unarchiveObjectWithFile:filename];
        NSLog(@"\n%@\n%i\n%g", [myFoo2 strVal], [myFoo2 intVal], [myFoo2 floatVal]);
    }
    return 0;
}
