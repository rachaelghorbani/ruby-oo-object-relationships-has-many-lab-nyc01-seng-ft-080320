require "pry"
class Artist
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def add_song(song)
    song.artist = self
  end

 
  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
  end

  def self.song_count
    Song.all.count
  end

end


# class Song
#   attr_accessor :name, :artist
#   @@all = []
#   def initialize(name)
#     @name = name
#     @@all << self
#   end
#   def self.all
#     @@all
#   end
# end

# drake = Artist.new("Drake")
# zero_to_hundred = Song.new("0 to 100")
# hotline_bling = Song.new("Hotline Bling")
# zero_to_hundred.artist = drake
# hotline_bling.artist = drake
# drake.songs.map {|song| song.name}