// Define three new classes, called Song, PlayList, and MusicCollection.
// A Song object will contain information about a particular song, such as its title, artist, album, and playing time.
// A PlayList object will contain the name of the playlist and a collection of songs.
// A MusicCollection object will contain a collection of playlists, including a special master playlist called library that contains every song in the collection. Define these three classes and write methods to do the following:
// Create a Song object and set its information.
// Create a Playlist object, and add songs to and remove songs from a playlist. A new song should be added to the master playlist if it’s not already there. Make sure that if a song is removed from the master playlist, it is removed from all playlists in the music collection as well.
// Create a MusicCollection object, and add playlists to and remove playlists from the collection.
// Search and display the information about any song, any playlist, or the entire music collection.
// Make sure all your classes do not leak memory!

#import <Foundation/Foundation.h>
#import "Song.h"
#import "Playlist.h"
#import "MusicCollection.h"

int main (int argc, char *argv[]){
    @autoreleasepool {
        
        Song *song1 = [[Song alloc] initWithTitle:@"Song 1" andArtist:@"Artist 1" andAlbum:@"Album 1" andPlayingTime:@"Playing time 1"];
        Song *song2 = [[Song alloc] initWithTitle:@"Song 2" andArtist:@"Artist 2" andAlbum:@"Album 2" andPlayingTime:@"Playing time 2"];
        Song *song3 = [[Song alloc] initWithTitle:@"Song 3" andArtist:@"Artist 3" andAlbum:@"Album 3" andPlayingTime:@"Playing time 3"];
        Song *song4 = [[Song alloc] initWithTitle:@"Song 4" andArtist:@"Artist 4" andAlbum:@"Album 4" andPlayingTime:@"Playing time 4"];
        Song *song5 = [[Song alloc] initWithTitle:@"Song 5" andArtist:@"Artist 5" andAlbum:@"Album 5" andPlayingTime:@"Playing time 5"];
        
        Playlist *playlist1 = [[Playlist alloc] initWithName:@"Playlist 1"];
        Playlist *playlist2 = [[Playlist alloc] initWithName:@"Playlist 2"];
        
        
        [playlist1 addSong:song1];
        [playlist1 addSong:song2];
        [playlist1 addSong:song3];
        
        [playlist2 addSong:song2];
        [playlist2 addSong:song4];
        [playlist2 addSong:song5];
        
        
        MusicCollection *collection = [[MusicCollection alloc] initWithName:@"Len512's collection"];
        [collection addPlaylist:playlist1];
        [collection addPlaylist:playlist2];
        
        [collection removeSong:song2];
        
        [collection showLibrary];
        [playlist1 list];
        [playlist2 list];
        [song1 info];
        
        NSMutableArray *res = [collection search:@"4"];
        NSLog(@"%@", res);
        res = [collection search:@"2"];
        NSLog(@"%@", res);
        res = [collection search:@"1"];
        NSLog(@"%@", res);
    }
    return 0;
}
