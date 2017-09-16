class Playlist < ActiveRecord::Base
    has_many :playlist_songs, :class_name => 'PlaylistSong'
    has_many :songs, through: :playlist_songs
end
