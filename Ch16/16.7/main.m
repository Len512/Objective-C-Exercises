// Open a file, read its contents 128 bytes at a time, and write it to the terminal.
// Use NSFileHandle’s fileHandleWithStandardOutput method to obtain a handle for the terminal’s output.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSFileHandle *inFile, *outFile;
        NSData *buffer;
        uint32 kBufSize = 128;
        uint64 offset = 0;
        NSString *iName = @"/Users/eleni/Documents/Programming/ObjC-Kochan/Ch16/Ch16/testfile";
        int cnt = 1;
        // Open the testfile for reading
        inFile = [NSFileHandle fileHandleForReadingAtPath:iName];
        if (inFile == nil){
            NSLog(@"Open of testfile for reading failed");
            return 1;
        }
        
        // Outfile Standard output for writing
        outFile = [NSFileHandle fileHandleWithStandardOutput];
        
        // Read the data from inFile and write it to outFile
        buffer = [inFile readDataOfLength:kBufSize];
        while ( [buffer length] > 0){
            NSLog(@"\nChunk %i:", cnt);
            [outFile writeData:buffer];
            offset += [buffer length];
            [inFile seekToFileOffset:offset];
            buffer = [inFile readDataOfLength:kBufSize];
            ++cnt;
        }
        // Close the two files
        [inFile closeFile];
        [outFile closeFile];
        
    }
    return 0;
}
