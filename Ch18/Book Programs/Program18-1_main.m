// Demonstrates simple assignment vs making a new copy

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *dataArray = [NSMutableArray arrayWithObjects:@"one", @"two", @"three", @"four", nil];
        NSMutableArray *dataArray2;
        
        // Simple assignment
        dataArray2 = dataArray;
        [dataArray2 removeObjectAtIndex:0];
        
        NSLog(@"dataArray :");
        for (NSString *elem in dataArray){
            NSLog(@" %@ ", elem);
        }
        NSLog(@"dataArray2: ");
        for (NSString *elem in dataArray2){
            NSLog(@" %@ ", elem);
        }
        
        // Try a copy, then remove first element from copy
        dataArray2 = [dataArray mutableCopy];
        [dataArray2 removeObjectAtIndex:0];
        
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
