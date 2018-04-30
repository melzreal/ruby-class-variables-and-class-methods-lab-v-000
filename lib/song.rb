class Song
  attr_accessor :artist, :genre
  attr_reader :name

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@artists << artist
    @@genres << genre
    @@count +=1
  end

  def self.count
    @@count
  end

  def self.artists
   @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
     @@genres.map{ |h| h}.uniq.to_h
  end


end
