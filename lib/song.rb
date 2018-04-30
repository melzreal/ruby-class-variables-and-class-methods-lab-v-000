class Song
  attr_accessor :artist, :genre
  attr_reader :name

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @@count +=1
    @name = name
    @artist = artist
    @genre = genre

    @@artists << @artist
    @@genres << @genre
  end

  def self.count
    @@count
  end

  def artists
   @@artists.uniq
  end

  def genres
    @@genres.uniq
  end

  def genre_count
    xs.group_by { |x| x }.map { |y, ys| y if ys.size > 1 }.compact
  end


end
