// Write a program to read in the XML property list created in exercise 1 and store the
// values in an array object. Display all the elements of the array to verify that the restore operation was successful.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *filename = @"/Users/eleni/Documents/Programming/ObjC-Kochan/Ch19/Ch19/primes.pl";
        NSArray *primes;
        
        primes = [NSArray arrayWithContentsOfFile:filename];
        NSLog(@" %@ ", primes);
        
    }
    return 0;
}
