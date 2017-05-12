// Basic String operations

#import <Foundation/Foundation.h>

int main (int argc, char *argv[]){
    @autoreleasepool {
        
        NSString *str1 = @"This is a string A";
        NSString *str2 = @"This is a string B";
        NSString *res;
        NSComparisonResult compareResult;
        
        // Count the number of characters
        NSLog(@"Length of str1: %lu", [str1 length]);
        NSLog(@"Length of str2: %lu", [str2 length]);
        
        // Copy one string to another
        res = [NSString stringWithString:str1];
        NSLog(@"copy: %@", res);
        
        // Copy one string to the end of another
        str2 = [str1 stringByAppendingString:str2];
        NSLog(@"Concatentation: %@", str2);
        
        // Test if 2 strings are equal
        if ([str1 isEqualToString:res]){
            NSLog(@"str1 == res");
        } else {
            NSLog(@"str1 != res");
        }
        
        // Test if one string is <, ==, or > than another
        compareResult = [str1 compare:str2];
        if (compareResult == NSOrderedAscending){
            NSLog(@"str1 < str2");
        } else if (compareResult == NSOrderedSame){
            NSLog(@"str1 == str2");
        } else {
            NSLog(@"str1 > str2");
        }
        
        // Convert a string to uppercase
        res = [str1 uppercaseString];
        NSLog(@"Uppercase conversion: %s", [res UTF8String]);
        
        // Convert a string to lowercase
        res = [str1 lowercaseString];
        NSLog(@"Lowercase conversion: %@", res);
        
        NSLog(@"Original string: %@", str1);
        
    }
    
    return 0;
}
