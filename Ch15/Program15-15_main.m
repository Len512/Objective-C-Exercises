// How a dictionary can be defined with initial key-value pairs using the dictionaryWithObjectsAndKeys: method

#import <Foundation/Foundation.h>

int main (int argc, char *argv[]){
    @autoreleasepool {
        
        NSDictionary *glossary = [NSDictionary dictionaryWithObjectsAndKeys:@"A class defined so other classes can inherit from it", @"abstract class", @"To implement all the methods defined in a protocol", @"adopt", @"Storing an object for later use", @"archiving", nil];
        
        // Print all key-value pairs from the dictionary
        for (NSString *key in glossary){
            NSLog(@"%@ : %@", key, [glossary objectForKey:key]);
        }
        
    }
    return 0;
}
