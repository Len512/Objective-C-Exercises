// Write a program that takes an NSArray of NSNumber objects (where each NSNumber represents an integer)
// and produces a frequency chart that lists each integer and how many times it occurs in the array.
// Use an NSCountedSet object to construct your frequency counts.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSNumber *myNumber;
        NSMutableArray *randomArray = [NSMutableArray array];
        
        int aRandomInt, i;
        
        for (i = 0; i<100; i++) {
            aRandomInt = (random() % 10);
            myNumber = [NSNumber numberWithInteger: aRandomInt];
            [randomArray addObject:myNumber];
        }
        
        NSCountedSet *countedSet = [[NSCountedSet alloc] initWithArray:randomArray];
        
        NSLog(@"%@ %@", @"Number", @"Count");
        for (NSNumber *theNum in countedSet) {
            NSLog(@" %ld      %lu", [theNum integerValue], [countedSet countForObject: theNum]);
        }
        
    }
    return 0;
}
