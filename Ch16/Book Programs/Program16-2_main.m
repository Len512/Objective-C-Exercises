// Make a copy of a file

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *new2 = @"/Users/eleni/Documents/Programming/ObjC-Kochan/Ch16/Ch16/newfile2";
        NSString *new3 = @"/Users/eleni/Documents/Programming/ObjC-Kochan/Ch16/Ch16/newfile3";
        
        NSFileManager *fm;
        NSData *fileData;
        
        fm = [NSFileManager defaultManager];
        
        // Read newfile2
        
        fileData = [fm contentsAtPath:new2];
        
        if (fileData == nil){
            NSLog(@"File read failed!");
            return 1;
        }
        
        // Write the data to newfile3
        if ([fm createFileAtPath:new3 contents:fileData attributes:nil] == NO){
            NSLog(@"Could not create the copy!");
            return 2;
        }
        NSLog(@"File copy was successfull!");
    }
    return 0;
}
