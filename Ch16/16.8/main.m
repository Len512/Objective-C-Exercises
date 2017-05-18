// A dictionary is stored as a property list at this URL:http://bit.ly/aycNwd.
// Write a program to read the contents of this dictionary and display its contents.
// What data does the dictionary contain?

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSURL *myURL = [NSURL URLWithString:@"http://bit.ly/aycNwd"];
        NSDictionary *myDictionary = [NSDictionary dictionaryWithContentsOfURL:myURL];
        
        for (NSString *key in myDictionary){
            NSLog(@" %@ : %@", key, [myDictionary objectForKey:key]);
        }
    }
    return 0;
}
