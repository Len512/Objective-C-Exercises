// Write a function that calculates the average of an array of 10 floating-point values
// and returns the result.

#import <Foundation/Foundation.h>

float calculateAverage (float array[], int n){
    int i;
    float sum = 0.0;
    for (i = 0; i < n; ++i) {
        sum += array[i];
    }
    //NSLog(@"Sum is %f", sum);
    return sum / n;
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        float calculateAverage (float array[], int n);
        
        float array[] = { -1.0, 1.0, -1.0, 1.0, -1.0, 1.0, -1.0, 1.0, -1.0, 2.0 }, average;
        
        average = calculateAverage(array, 10);
        NSLog(@"The average is %f", average);
    }
    return 0;
}
