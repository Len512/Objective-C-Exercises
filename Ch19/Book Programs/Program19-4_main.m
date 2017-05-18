// Program 19.4 reads the archive file created in Program 19.3
// by using NSKeyedUnarchiver’s unarchiveObjectWithFile: method.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *filename = @"/Users/Len512/Documents/Programming/ObjC-Kochan/Ch19/Ch19/glossary";
        
        NSDictionary *glossary;
        glossary = [NSKeyedUnarchiver unarchiveObjectWithFile:[filename stringByAppendingPathExtension:@"archive"]];
        
        for (NSString *key in glossary){
            NSLog(@" %@ : %@", key, [glossary objectForKey:key]);
        }
    }
    return 0;
}
