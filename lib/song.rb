class Song 
attr_accessor :name, :artists, :genres
@@count = 0
 @@artists = [] 
@@genres = [] 

def initialize(name, artists, genres)
   @@count += 1
    @name = name
    @artists = artists
    @genres = genres
    @@artists << artists
    @@genres << genre
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
    genre_count = {}
    @@genres.each do |genre|
      if !genre_count[genre]
        genre_count[genre] = 0
      end
      genre_count[genre] += 1
    end
    genre_count
  end


  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if !artist_count[artist]
        artist_count[artist] = 0
      end
      artist_count[artist] += 1
    end
    artist_count
  end
  
end


