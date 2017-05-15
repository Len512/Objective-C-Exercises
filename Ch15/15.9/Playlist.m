#import <Foundation/Foundation.h>
#import "Playlist.h"

@implementation Playlist

@synthesize playlistName;

- (id) initWithName: (NSString *) name {
    self = [super init];
    if (self){
        playlistName = [[NSString alloc] initWithString:name];
        playlist = [[NSMutableArray alloc] init];
    }
    return self;
}
- (id) init {
    return [self initWithName:@"No Playlist Name"];
}
- (void) list {
    NSLog(@"======== Contents of: %@ =========", playlistName);
    for (Song *nextSong in playlist){
            NSLog(@"%-20s %-32s", [nextSong.title UTF8String], [nextSong.artist UTF8String]);
            NSLog(@"%-20s", [nextSong.album UTF8String]);
            NSLog(@"%-20s", [nextSong.playingTime UTF8String]);
    }
    NSLog(@"==========================================");
}

- (void) addSong: (Song *) theSong {
    if ([playlist containsObject:theSong]){
        NSLog(@"This song already exists");
    } else {
        [playlist addObject:theSong];
    }
}
- (void) removeSong: (Song *) theSong {
    if ([playlist containsObject:theSong]){
        [playlist removeObject:theSong];
    } else {
        NSLog(@"Song not found!");
    }
}

- (NSMutableArray *) playlist {
    return playlist;
}
- (NSMutableArray *) search: (NSString *) str {
    NSMutableArray *matches = [NSMutableArray array];
    for (Song *s in playlist){
        if ([s lookup:str]){
            [matches addObject:s];
        }
    }
    return [matches count]?matches:nil;
}
@end
