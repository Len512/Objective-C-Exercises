// Demonstrates making a shallow copy of an array and filling it with mutable strings
// so that the strings in the array can be changed

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *dataArray = [NSMutableArray arrayWithObjects:[NSMutableString stringWithString:@"one"], [NSMutableString stringWithString:@"two"], [NSMutableString stringWithString:@"three"], nil];
        NSMutableArray *dataArray2;
        NSMutableString *mStr;
        
        NSLog(@"dataArray :");
        for (NSString *elem in dataArray){
            NSLog(@" %@ ", elem);
        }

        // Make a copy, then change one of the strings
        dataArray2 = [dataArray mutableCopy];
        
        mStr = [dataArray objectAtIndex:0];
        [mStr appendString:@"ONE"];
        
        NSLog(@"dataArray :");
        for (NSString *elem in dataArray){
            NSLog(@" %@ ", elem);
        }
        NSLog(@"dataArray2: ");
        for (NSString *elem in dataArray2){
            NSLog(@" %@ ", elem);
        }
        
    }
    return 0;
}
