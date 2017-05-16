// Modify Program 16.7 so that the file is read and written kBufSize bytes at a time,
// where kBufSize is defined at the beginning of your program. Be sure to test the program
// on large files (that is, files larger than kBufSize bytes).

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSFileHandle *inFile, *outFile;
        NSData *buffer;
        uint32 kBufSize = 512;
        uint64 offset = 0;
        NSString *iName =  @"/Users/Len512/Documents/Programming/ObjC-Kochan/Ch16/Ch16/testfile";
        NSString *oName =  @"/Users/Len512/Documents/Programming/ObjC-Kochan/Ch16/Ch16/testout";
        
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
        buffer = [inFile readDataOfLength:kBufSize];
        while ( [buffer length] > 0){
            [outFile writeData:buffer];
            offset += [buffer length];
            [inFile seekToFileOffset:offset];
            buffer = [inFile readDataOfLength:kBufSize];
            NSLog(@"Copied %iu bytes: %@", kBufSize, buffer);
        }
        // Close the two files
        [inFile closeFile];
        [outFile closeFile];
        
        // Verify the file's contents
        NSLog(@"%@", [NSString stringWithContentsOfFile:oName encoding:NSUTF8StringEncoding error:nil]);
    }
    return 0;
}
