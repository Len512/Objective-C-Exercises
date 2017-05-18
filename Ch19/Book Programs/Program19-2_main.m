// Program 19.2 reads back the glossary written
// in Program 19.1 and then displays its contents.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *filename = @"/Users/Len512/Documents/Programming/ObjC-Kochan/Ch19/Ch19/glossary";
        
        NSDictionary *glossary;
        
        glossary = [NSDictionary dictionaryWithContentsOfFile:filename];
        for (NSString *key in glossary){
            NSLog(@" %@ : %@ ", key, [glossary objectForKey:key]);
        }
    }
    return 0;
}
