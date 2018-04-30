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

  def genre_count
    @@genres.group_by{ |x| x }.map { |y, ys| y if ys.size > 1 }.compact
  end


end
