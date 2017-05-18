// Shows how the dictionary in Chapter 15 can be written to a file as a property list

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *filename = @"/Users/Len512/Documents/Programming/ObjC-Kochan/Ch19/Ch19/glossary";
        NSDictionary *glossary = [NSDictionary dictionaryWithObjectsAndKeys:@"A class defined so other classes can inherit from it",
                                  @"abstract class",
                                  @"To implement all the methods defined in a protocol",
                                  @"adopt",
                                  @"Storing an object for later use",
                                  @"archiving",  
                                  nil  
                                  ];
        if ([glossary writeToFile:filename atomically:YES] == NO){
            NSLog(@"Save to file failed!");
        }
        
    }
    return 0;
}
