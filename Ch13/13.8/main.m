// Write a program that prints all its command-line arguments, one per line at the terminal.
// Notice the effect of enclosing arguments that contain space characters inside quotation marks.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        printf("%d\n", argc);
        for (int i = 0; i <= argc; ++i) {
            printf("%s\n", argv[i]);
        }
    }
    return 0;
}
