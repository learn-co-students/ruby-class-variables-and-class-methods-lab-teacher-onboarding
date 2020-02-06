class Song
  @@count = 0
  @@genres = []
  @@artists = []
  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    @@genres.reduce({}) { |a, c| a[c] = a.key?(c) ? a[c] += 1 : 1; a }
  end

  def self.artist_count
    @@artists.reduce({}) { |a, c| a[c] = a.key?(c) ? a[c] += 1 : 1; a }
  end
end
