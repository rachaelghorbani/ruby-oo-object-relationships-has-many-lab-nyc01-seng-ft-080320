class Song
  attr_accessor :name, :artist
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def artist_name
    artist.name if artist
  end
end

# class Artist
#   attr_accessor :name
#   def initialize(name)
#     @name = name
#   end
#   def songs
#     Song.all
#   end
# end

# hotline_bling = Song.new("hotline bling")
# drake = Artist.new("drake")
# hotline_bling.artist = drake
# puts hotline_bling.artist.name

