// Append the file “fileA" to the end of “fileB"

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSFileHandle *inFile, *outFile;
        NSData *buffer;
        NSString *fileA =  @"/Users/USER/Documents/Programming/ObjC-Kochan/Ch16/Ch16/testfile";
        NSString *fileB =  @"/Users/USER/Documents/Programming/ObjC-Kochan/Ch16/Ch16/newfile";
        
        // Open fileA for reading
        inFile = [NSFileHandle fileHandleForReadingAtPath:fileA];
        if (inFile == nil){
            NSLog(@"Open of fileA for reading failed");
            return 1;
        }
        
        // Open fileB for writing
        outFile = [NSFileHandle fileHandleForWritingAtPath:fileB];
        if (outFile == nil){
            NSLog(@"Open of fileB for writing failed");
            return 2;
        }
        
        // Seek to the end of outFile
        [outFile seekToEndOfFile];
        
        // Read inFile and write its contents to outFile
        buffer = [inFile readDataToEndOfFile];
        [outFile writeData:buffer];
        
        // Close the two files
        [inFile closeFile];
        [outFile closeFile];
        
        // Verify its contents
        NSLog(@"%@", [NSString stringWithContentsOfFile:fileB encoding:NSUTF8StringEncoding error:nil]);
    }
    return 0;
}
