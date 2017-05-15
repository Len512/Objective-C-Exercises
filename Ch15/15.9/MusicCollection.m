#import <Foundation/Foundation.h>
#import "MusicCollection.h"

@implementation MusicCollection

@synthesize collectionName;

- (id) initWithName: (NSString *) name {
    self = [super init];
    if (self){
        collectionName = [[NSString alloc] initWithString:name];
        playlists = [[NSMutableArray alloc] init];
        library = [[Playlist alloc] initWithName:@"Library"];
    }
    return self;
}
- (id) init {
    return [self initWithName:@"NoName"];
}

- (void) list {
    NSLog(@"Music collection %@ contents: ", collectionName);
    for (Playlist *pl in playlists){
        NSLog(@"%@", pl.playlistName);
    }
}

- (void) addPlaylist: (Playlist *) thePlaylist {
    if (![playlists containsObject:thePlaylist]) {
        [playlists addObject:thePlaylist];
        
        for (Song *s in [thePlaylist playlist]){
            if (![[library playlist] containsObject:s]){
                [library addSong:s];
            }
        }
    }
}
- (void) removePlaylist: (Playlist *) thePlaylist {
    if ([playlists containsObject:thePlaylist]){
        [playlists removeObject:thePlaylist];
    }
}

- (void) showLibrary {
    NSLog(@"Contents of library: %lu", [[library playlist] count]);
    
    for (Song *s in [library playlist]){
        NSLog(@"%@ by %@", s.title, s.artist);
    }
}
- (Playlist *) library {
    return library;
}
- (void) addSong: (Song *)s {
    if (![[library playlist] containsObject:s]){
        [[library playlist] addObject:s];
    }
}
- (void) removeSong:(Song *) s {
    if ([[library playlist] containsObject:s]){
        [[library playlist] removeObject:s];
        for (Playlist *pl in playlists){
            if ([[pl playlist] containsObject:s]){
                [pl removeSong:s];
            }
        }
    }
}
- (NSMutableArray *) search: (NSString *) str {
    NSMutableArray *matches = [NSMutableArray array];
    for (Playlist *pl in playlists){
        if ([pl.playlistName localizedCaseInsensitiveContainsString:str]){
            [matches addObject:pl];
        }
        for (Song *s in [pl playlist]){
            if ([s lookup:str]){
                [matches addObject:s];
            }
        }
    }
    return [matches count] ? matches : nil;
}
@end
