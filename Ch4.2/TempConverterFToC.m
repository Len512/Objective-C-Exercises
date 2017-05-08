#import <Foundation/Foundation.h>
#import "TempConverterFToC.h"

@implementation TempConverterFToC

- (float) getTemperatureInC {
    return temperatureInC;
}

- (void) setTemperatureInC:(float) temp {
    temperatureInC = (temp - 32) / 1.8;
}

@end
