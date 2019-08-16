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
  
  def add_song(song)
    self.songs << song 
  end
  
  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.new(name)
  end
    

end
