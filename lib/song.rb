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
  # describe ".genre_count" do 
  #   it "is a class method that returns a hash of genres and the number of songs that have those genres" do 
  #     expect(Song.genre_count).to eq({"pop" => 1, "rap" => 2})
  #   end
  # end

  
  def self.artist_count 
    @artist_hash = {}
    @artist_count = 1 
    @@artists.each_with_index do |i, index|
      if i == @@artists[index-1]
        @artist_count += 1 
      else 
        @genre_count = 1 
      end
      @genre_hash["#{i}"] = @genre_count
    end 
    @genre_hash
  end 
  end 

  # describe ".artist_count" do 
  #   it "is a class method that returns a hash of artists and the number of songs that have those artists" do 
  #     expect(Song.artist_count).to eq({"Brittany Spears" => 1, "Jay-Z" => 2})
  #   end
end 