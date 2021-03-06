require 'pry'
class Song

  attr_accessor :name, :artist

 def initialize(name)
   @name = name
 end

 def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
 end

 def self.new_by_filename(file_name)
   arr = file_name.split(" - ")

   new_song = Song.new(arr[1])
   new_song.artist_name=(arr[0])
   new_song.artist.add_song(new_song)
   new_song
 end

end
