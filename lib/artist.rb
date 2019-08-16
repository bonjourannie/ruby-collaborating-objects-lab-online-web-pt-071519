class Artist 
  
  attr_accessor :name, :songs 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    save
  end
  
  def self.all 
    @@all 
  end
  
  def save
    @@all << self
  end
  
  def songs
    Song.all.select {|song| song.artist == self}  
  end
  
  def add_song
    song.artist = self 
  end
  
end
