class Song
  attr_accessor :artist, :genre
  attr_reader :name

  @@count = 0
  @@artists = []
  @@genres = []



  def initialize(name, artist, genre)
    @@count +=1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def artists
    @@artists == artist.uniq!
    @@artists
  end

  def genres
    @@genres == @@genres.uniq!
    @@genres
  end

  def genre_count

  end


end
