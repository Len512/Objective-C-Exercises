#ifndef Foo_h
#define Foo_h

#import <Foundation/Foundation.h>

@interface Foo : NSObject <NSCoding>
{
    NSString *strVal;
    int intVal;
    float floatVal;
}
@property (copy, nonatomic) NSString *strVal;
@property int intVal;
@property float floatVal;
@end

#endif /* Foo_h */
