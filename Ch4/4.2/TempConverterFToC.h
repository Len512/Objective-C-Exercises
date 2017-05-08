#ifndef TempConverterFToC_h
#define TempConverterFToC_h

@interface TempConverterFToC : NSObject
{
    float temperatureInC;
}
- (void) setTemperatureInC: (float) temp;
- (float) getTemperatureInC;

@end

#endif /* TempConverterFToC_h */
