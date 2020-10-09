
class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select do |song|
      song.artist
    end
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(title)
    song = Song.new(title)
    song.artist = self
  end

  def self.song_count
    Song.all.count
  end

end
