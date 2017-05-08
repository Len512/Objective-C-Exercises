#import <Foundation/Foundation.h>
#import "TempConverterFToC.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        TempConverterFToC *tempFToC = [TempConverterFToC new];
        [tempFToC setTemperatureInC:27];
        NSLog(@"27 degrees Fahrenheit is %f degrees Celcius", [tempFToC getTemperatureInC]);
    }
    return 0;
}
