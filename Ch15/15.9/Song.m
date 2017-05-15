#import <Foundation/Foundation.h>
#import "Song.h"
#import "objc/runtime.h"

@implementation Song

@synthesize title, artist, album, playingTime;

- (void) setTitle: (NSString *) t andArtist: (NSString *) ar andAlbum: (NSString *) al andPlayingTime: (NSString *) pt {
    title = t;
    artist = ar;
    album = al;
    playingTime = pt;
}
- (id) initWithTitle: (NSString *) t andArtist: (NSString *) ar andAlbum: (NSString *) al andPlayingTime: (NSString *) pt {
    self = [super init];
    if (self){
        [self setTitle:t andArtist:ar andAlbum:al andPlayingTime:pt];
    }
    return self;
}
- (id) init {
    return [self initWithTitle:@"No Title" andArtist:@"No Artist" andAlbum:@"No Album" andPlayingTime:@"No Playing Time"];
}

- (void) info {
    NSLog(@"======== Contents of: %@ =========", title);
    NSLog(@"%-20s %-32s", [title UTF8String], [artist UTF8String]);
    NSLog(@"%-20s", [album UTF8String]);
    NSLog(@"%-20s", [playingTime UTF8String]);
    NSLog(@"======================================");
}
- (NSMutableArray *) props {
    NSMutableArray *propArray = [NSMutableArray array];
    unsigned int count;
    objc_property_t *properties = class_copyPropertyList([self class], &count);
    for (int i = 0; i < count; ++i){
        objc_property_t property = properties[i];
        const char *propName = property_getName(property);
        if (propName){
            NSString *propN = [NSString stringWithCString:propName encoding: [NSString defaultCStringEncoding]];
            [propArray addObject:propN];
        }
    }
    return propArray;
}
- (BOOL) lookup: (NSString *) str {
    NSArray *properties = [self props];
    for (NSString *prop in properties) {
        if ([[self valueForKey:prop] localizedCaseInsensitiveContainsString:str]){
            return YES;
        }
    }
    return NO;
}
@end
