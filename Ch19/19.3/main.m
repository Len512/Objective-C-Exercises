// Write a program to read in the XML property list created in exercise 1 and store the
// values in an array object. Display all the elements of the array to verify that the restore operation was successful.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSDictionary *glossary;
        
        glossary = [NSDictionary dictionaryWithContentsOfFile: @"/Library/Preferences/com.apple.TimeMachine.plist"];
        
        for ( NSString *key in glossary ){
            NSLog (@"%@: %@", key, [glossary objectForKey: key]);
        }
        
    }
    return 0;
}
