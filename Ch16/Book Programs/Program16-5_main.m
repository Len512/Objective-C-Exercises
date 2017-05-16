// Some basic path operations

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *fName = @"path.m";
        NSFileManager *fm;
        NSString *path, *tempdir, *extension, *homedir, *fullpath;
        NSString *upath = @"~Len512/documents/../ch16/./path.m";
        
        NSArray *components;
        fm = [NSFileManager defaultManager];
        
        // Get the current working directory
        tempdir = NSTemporaryDirectory();

        NSLog(@"Temporary Directory is %@", tempdir);
        
        // Extract the base directory from current directory
        path = [fm currentDirectoryPath];
        NSLog(@"Base dir is %@", [path lastPathComponent]);
        
        // Create a full path to the file fName in current directory
        fullpath = [path stringByAppendingPathComponent:fName];
        NSLog(@"fullpath to %@ is %@", fName, fullpath);
        
        // Get the file name extension
        extension = [fullpath pathExtension];
        NSLog(@"extension for %@ is %@", fullpath, extension);
        
        // Get user's home directory
        homedir = NSHomeDirectory();
        NSLog(@"Your home directory is %@", homedir);
        
        // Divide a path into its components
        components = [homedir pathComponents];
        for (path in components){
            NSLog(@"%@", path);
        }
        
        // Standardise a path
        NSLog(@"%@ => %@", upath, [upath stringByStandardizingPath]);
    }
    return 0;
}
