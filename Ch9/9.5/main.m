// Given the Fraction and Complex class definitions you have been using in this text
// and the following definitions
// Fraction *fraction = [[Fraction alloc] init];
// Complex  *complex = [[Complex alloc] init];
// id        number = [[Complex alloc] init];
// determine the return value from the following message expressions.Then type
// them into a program to verify the results.
// [fraction isMemberOfClass: [Complex class]];
// [complex isMemberOfClass: [NSObject class]];
// [complex isKindOfClass: [NSObject class]];
// [fraction isKindOfClass: [Fraction class]];
// [fraction respondsToSelector: @selector (print)];
// [complex respondsToSelector: @selector (print)];
// [Fraction instancesRespondToSelector: @selector (print)];
// [number respondsToSelector: @selector (print)];
// [number isKindOfClass: [Complex class]];
// [number respondsToSelector: @selector (release)];
// [[number class] respondsToSelector: @selector (alloc)];

#import <Foundation/Foundation.h>
#import "Complex.h"
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Fraction *fraction = [[Fraction alloc] init];
        Complex *complex = [[Complex alloc] init];
        id number = [[Complex alloc] init];
        
        NSLog(@"[fraction isMemberOfClass: [Complex class]]");
        NSLog([fraction isMemberOfClass: [Complex class]]? @"Yes": @"No"); //NO
        
        NSLog(@"[complex isMemberOfClass: [NSObject class]]");
        NSLog([complex isMemberOfClass: [NSObject class]]? @"Yes": @"No"); //NO
        
        NSLog(@"[complex isKindOfClass: [NSObject class]]");
        NSLog([complex isKindOfClass: [NSObject class]]? @"Yes": @"No"); //YES
        
        NSLog(@"[fraction isKindOfClass: [Fraction class]]");
        NSLog([fraction isKindOfClass: [Fraction class]]? @"Yes": @"No"); //YES
        
        NSLog(@"[fraction respondsToSelector: @selector(print)]");
        NSLog([fraction respondsToSelector: @selector(print)]? @"Yes": @"No"); //YES
        
        NSLog(@"[complex respondsToSelector: @selector(print)]");
        NSLog([complex respondsToSelector: @selector(print)]? @"Yes": @"No"); //YES
        
        NSLog(@"[Fraction instancesRespondToSelector: @selector(print)]");
        NSLog([Fraction instancesRespondToSelector: @selector(print)]? @"Yes": @"No"); //YES
        
        NSLog(@"[number respondsToSelector: @selector(print)]");
        NSLog([number respondsToSelector: @selector(print)]? @"Yes": @"No"); //YES
        
        NSLog(@"[number isKindOfClass: [Complex class]]");
        NSLog([number isKindOfClass: [Complex class]]? @"Yes": @"No"); //YES
        
        //[number respondsToSelector: @selector(release)]; // ARC does not allow release
        NSLog(@"[[number class] respondsToSelector: @selector(alloc)]");
        NSLog([[number class] respondsToSelector: @selector(alloc)]? @"Yes": @"No"); //YES

    }
    return 0;
}
