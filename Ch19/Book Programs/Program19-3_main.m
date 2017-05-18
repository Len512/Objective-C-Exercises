// Program 19.3 shows that the glossary can be saved to a file on disk using the method
// archiveRootObject:toFile: from the NSKeyedArchiver class.

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
        [NSKeyedArchiver archiveRootObject:glossary toFile:[filename stringByAppendingPathExtension:@"archive"]];
        
    }
    return 0;
}
