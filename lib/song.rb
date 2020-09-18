<<<<<<< HEAD
  
class Song

  attr_accessor :name, :artist


  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    if artist
      artist.name
    else
      nil
    end
  end
end
=======
class Song
  attr_accessor :name, :artist
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @artist = artist
    @@all << self
  end

  def artist_name
    self.artist == nil ? nil : self.artist.name
  end

end #<---- class end
>>>>>>> 88e1d464bdc6ae7e5c3ef1397e1b0fd613ce3643
