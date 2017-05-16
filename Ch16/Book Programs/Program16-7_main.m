// Some basic file handle operations
// Assumes the existence of a file called “testfile"
// in the current working directory

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSFileHandle *inFile, *outFile;
        NSData *buffer;
        NSString *iName =  @"/Users/USER/Documents/Programming/ObjC-Kochan/Ch16/Ch16/testfile";
        NSString *oName =  @"/Users/USER/Documents/Programming/ObjC-Kochan/Ch16/Ch16/testout";
        
        // Open the testfile for reading
        inFile = [NSFileHandle fileHandleForReadingAtPath:iName];
        if (inFile == nil){
            NSLog(@"Open of testfile for reading failed");
            return 1;
        }
        
        // Create the output file first if necessary
        [[NSFileManager defaultManager] createFileAtPath:oName contents:nil attributes:nil];
        
        // Now open outfile for writing
        outFile = [NSFileHandle fileHandleForWritingAtPath:oName];
        
        if (outFile == nil){
            NSLog(@"Open of testout for writing failed");
            return 2;
        }
        
        // Truncate the output file since it may contain data
        [outFile truncateFileAtOffset:0];
        
        // Read the data from inFile and write it to outFile
        buffer = [inFile readDataToEndOfFile];
        [outFile writeData:buffer];
        
        // Close the two files
        [inFile closeFile];
        [outFile closeFile];
        
        // Verify the file's contents
        NSLog(@"%@", [NSString stringWithContentsOfFile:oName encoding:NSUTF8StringEncoding error:nil]);
    }
    return 0;
}
