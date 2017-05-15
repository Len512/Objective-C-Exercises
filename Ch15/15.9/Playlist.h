#ifndef Playlist_h
#define Playlist_h

#import <Foundation/Foundation.h>
#import "Song.h"

@interface Playlist : NSObject
{
    NSString *playlistName;
    NSMutableArray *playlist;
}
@property NSString *playlistName;

- (id) initWithName: (NSString *) name;
- (id) init;

- (void) list;

- (void) addSong: (Song *) theSong;
- (void) removeSong: (Song *) theSong;

- (NSMutableArray *) playlist;
- (NSMutableArray *) search: (NSString *) str;
@end

#endif /* Playlist_h */
