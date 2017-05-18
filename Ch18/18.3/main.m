// Create an NSDictionary dictionary object and fill it with some key/object pairs.
// Then make both mutable and immutable copies.
// Are these deep copies or shallow copies that are made? Verify your answer.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *theKey = @"OldKey";
        NSString *theValue = @"OldValue";
        
        NSDictionary *dict = @{
                               @"anObject" : @"someRandomString",
                               @"helloString" : @"Hello, World!",
                               @"magicNumber" : @42,
                               @"aValue" : @311,
                               theKey : theValue
                               };
        
        NSDictionary *dictCopy;
        NSMutableDictionary *mutableDictCopy;
        
        dictCopy = [dict copy];
        mutableDictCopy = [dict mutableCopy];
        
        NSLog(@"Original dict: ");
        for (NSString *key in dict){
            NSLog(@" %@ : %@", key, [dict objectForKey:key]);
        }
        NSLog(@"Copy: ");
        for (NSString *key in dictCopy){
            NSLog(@" %@ : %@", key, [dictCopy objectForKey:key]);
        }
        NSLog(@"Mutable copy: ");
        for (NSString *key in mutableDictCopy){
            NSLog(@" %@ : %@", key, [mutableDictCopy objectForKey:key]);
        }
        
        [mutableDictCopy removeObjectForKey:@"aValue"];
        NSLog(@"Original dict: ");
        for (NSString *key in dict){
            NSLog(@" %@ : %@", key, [dict objectForKey:key]);
        }
        NSLog(@"Copy: ");
        for (NSString *key in dictCopy){
            NSLog(@" %@ : %@", key, [dictCopy objectForKey:key]);
        }
        NSLog(@"Mutable copy: ");
        for (NSString *key in mutableDictCopy){
            NSLog(@" %@ : %@", key, [mutableDictCopy objectForKey:key]);
        }
        
        theKey = @"New key";
        theValue = @"New value";
        
        NSLog(@"Original dict: ");
        for (NSString *key in dict){
            NSLog(@" %@ : %@", key, [dict objectForKey:key]);
        }
        NSLog(@"Copy: ");
        for (NSString *key in dictCopy){
            NSLog(@" %@ : %@", key, [dictCopy objectForKey:key]);
        }
        NSLog(@"Mutable copy: ");
        for (NSString *key in mutableDictCopy){
            NSLog(@" %@ : %@", key, [mutableDictCopy objectForKey:key]);
        }
        
    }
    return 0;
}
