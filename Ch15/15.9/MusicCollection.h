#ifndef MusicCollection_h
#define MusicCollection_h
#import <Foundation/Foundation.h>
#import "Song.h"
#import "Playlist.h"

@interface MusicCollection : NSObject
{
    NSString *collectionName;
    NSMutableArray *playlists;
    Playlist *library;
}
@property NSString *collectionName;
- (id) initWithName: (NSString *) name;
- (id) init;

- (void) list;

- (void) addPlaylist: (Playlist *) thePlaylist;
- (void) removePlaylist: (Playlist *) thePlaylist;
- (void) showLibrary;
- (Playlist *) library;
- (void) removeSong: (Song *) s;
- (void) addSong: (Song *) s;
- (NSMutableArray *) search: (NSString *) str;
@end

#endif /* MusicCollection_h */
