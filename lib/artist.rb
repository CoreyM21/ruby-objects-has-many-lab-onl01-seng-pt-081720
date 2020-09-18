class Artist
<<<<<<< HEAD
  attr_accessor :name
  @@all_songs_ever = []

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def initialize(name)
    @name = name
  end

  def add_song(song)
    @@all_songs_ever << song
    song.artist = self 
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    self.songs << song
    @@all_songs_ever << song
    song.artist = self
  end

  def self.song_count 
    Song.all.count 
=======

  attr_accessor :name, :songs

  @@song_count = 0
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end

  def self.all
    @@all
>>>>>>> 88e1d464bdc6ae7e5c3ef1397e1b0fd613ce3643
  end

end