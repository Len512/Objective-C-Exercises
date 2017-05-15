#ifndef Song_h
#define Song_h

#import <Foundation/Foundation.h>

@interface Song : NSObject
{
    NSString *title;
    NSString *artist;
    NSString *album;
    NSString *playingTime;
}
@property NSString *title, *artist, *album, *playingTime;

- (void) setTitle: (NSString *) t andArtist: (NSString *) ar andAlbum: (NSString *) al andPlayingTime: (NSString *) pt;
- (id) initWithTitle: (NSString *) t andArtist: (NSString *) ar andAlbum: (NSString *) al andPlayingTime: (NSString *) pt;
- (id) init;
- (void) info;
- (BOOL) lookup: (NSString *) str;
@end

#endif /* Song_h */
