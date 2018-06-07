class Song 
  attr_accessor :name
  attr_accessor :artist 
  attr_accessor :genre
  
  @@count = 0
  @@genres = [] 
  @@artists = [] 
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre
    @@genres << genre  
    @@count += 1 
    @@artists << artist
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
    @genre_hash = {}
    @genre_count = 1 
    #["rap", "rap", "pop"]
    @@genres.each_with_index do |i, index|
      if i == @@genres[index-1]
        @genre_count += 1 
      else 
        @genre_count = 1 
      end
      @genre_hash["#{i}"] = @genre_count
    end 
    @genre_hash
  end 
  
  def self.artist_count 
    @artist_hash = {}
    @artist_count = 1 
    @@artists.each_with_index do |i, index|
      if i == @@artists[index-1]
        @artist_count += 1 
      else 
        @artist_count = 1 
      end
      @artist_hash["#{i}"] = @artist_count
    end 
    @artist_hash
  end 

end 