// Using NSProcessInfo, write a program to display all the information returned by each of its getter methods.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSDictionary *procDictionary = [proc environment];
        NSString *procName = [proc processName];
        NSArray *procArguments = [proc arguments];
        unsigned long long procMemory = [proc physicalMemory];
        NSString *procUniqueString = [proc globallyUniqueString];
        int procID = [proc processIdentifier];
        NSString *procUserName = [proc userName];
        NSString *procFullUserName = [proc fullUserName];
        NSString *procHostName = [proc hostName];
        //NSOperatingSystemVersion procOS = [proc operatingSystemVersion];
        NSString *procOSString = [proc operatingSystemVersionString];
        NSUInteger procProcessorCount = [proc processorCount];
        NSUInteger procActiveProcessorCount = [proc activeProcessorCount];
        unsigned long long procPhysicalMemory = [proc physicalMemory];
        NSTimeInterval procSystemUpTime = [proc systemUptime];
        NSProcessInfoThermalState procThermalState = [proc thermalState];
        BOOL procTerminationSupportEnabled = [proc automaticTerminationSupportEnabled];
        
        NSLog(@"Process Info : %@", proc);
        NSLog(@"Process Name : %@", procName);
        NSLog(@"Process Environment :");
        for (NSString *key in procDictionary){
            NSLog(@"%@ : %@", key, [procDictionary objectForKey:key]);
        }
        NSLog(@"Process Arguments : %@", procArguments);
        NSLog(@"Process Memory : %llu", procMemory);
        NSLog(@"Process Unique String : %@", procUniqueString);
        NSLog(@"Process ID : %i", procID);
        NSLog(@"Process User Name : %@", procUserName);
        NSLog(@"Process Full User Name : %@", procFullUserName);
        NSLog(@"Process Host Name : %@", procHostName);
        //NSLog(@"Process OS Version : %f", procOS);
        NSLog(@"Process OS Version String : %@", procOSString);
        NSLog(@"Process Processor Count : %lu", procProcessorCount);
        NSLog(@"Process Active Processor Count : %lu", procActiveProcessorCount);
        NSLog(@"Process Physical Memmory : %llu", procPhysicalMemory);
        NSLog(@"Process System Up Time : %f", procSystemUpTime);
        NSLog(@"Process Thermal State : %ld", procThermalState);
        NSLog(@"Process Termination Support : %hhd", procTerminationSupportEnabled);
    }
    return 0;
}
