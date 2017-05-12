// Set up a mutable dictionary to be used as a glossary of Objective-C terms
// and fill in the first three entries.

#import <Foundation/Foundation.h>

int main (int argc, char *argv[]){
    @autoreleasepool {
        
        NSMutableDictionary *glossary = [NSMutableDictionary dictionary];
        
        // Store three entries in the glossary
        [glossary setObject:@"A class defined so other classes can inherit from it" forKey:@"abstract class"];
        [glossary setObject:@"To implement all the methods defined in a protocol" forKey:@"adopt"];
        [glossary setObject:@"Storing an object for later use" forKey:@"archiving"];
        
        // Retrieve and display them
        NSLog(@"abstract class: %@", [glossary objectForKey:@"abstract class"]);
        NSLog(@"adopt: %@", [glossary objectForKey:@"adopt"]);
        NSLog(@"archiving: %@", [glossary objectForKey:@"archiving"]);
        
    }
    return 0;
}
