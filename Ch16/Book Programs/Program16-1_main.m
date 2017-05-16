// Basic File operations
// Assumes the existence of a file called “testfile"
// in the current directory

// Xcode needs the absolute paths of files in order to run this program

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *fName = @"/Users/USER/Documents/Programming/ObjC-Kochan/Ch16/Ch16/testfile";
        NSString *new = @"/Users/USER/Documents/Programming/ObjC-Kochan/Ch16/Ch16/newfile";
        NSString *new2 = @"/Users/USER/Documents/Programming/ObjC-Kochan/Ch16/Ch16/newfile2";
        NSFileManager *fm;
        NSDictionary *attr;
        
        // Need to create an instance of the file manager
        fm = [NSFileManager defaultManager];
        
        // Make sure testfile exists first
        if ([fm fileExistsAtPath:fName] == NO){
            NSLog(@"File does not exist!");
            return 1;
        }
        
        // Make a copy
        if ([fm copyItemAtPath:fName toPath:new error:NULL]){
            NSLog(@"File copy failed!");
            return 2;
        }
        
        // Test to see if the two files are equal
        if ([fm contentsEqualAtPath:fName andPath:new] == NO){
            NSLog(@"Files are not equal!");
            return 3;
        }
        
        // Rename the copy
        if ([fm moveItemAtPath:@"newfile" toPath:new2 error:NULL] == 0){
            NSLog(@"File rename failed!");
            return 4;
        }
        
        // Get the size of the newfile2
        if ((attr = [fm attributesOfItemAtPath:new2 error:NULL]) == nil){
            NSLog(@"Could not get file attributes!");
            return 5;
        }
        NSLog(@"File size is %llu bytes", [[attr objectForKey:NSFileSize] unsignedLongLongValue]);
        
        // Delete the original file
        if ([fm removeItemAtPath:fName error:NULL] == NO){
            NSLog(@"File removal failed!");
            return 6;
        }
        
        NSLog(@"All operations were successfull");
        
        //Display the contents of the newfile2
        NSLog(@"%@", [NSString stringWithContentsOfFile:new2 encoding:NSUTF8StringEncoding error:NULL]);
    }
    return 0;
}
