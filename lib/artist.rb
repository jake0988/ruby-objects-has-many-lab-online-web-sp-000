class Artist
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
     Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(song_name)
    Song.new(song_name)
    artist.song_name
  end

  def self.song_count
    count = 0
    artist.each do |c|
      c.songs do |e|
        count += 1
      end
    end
      count
  end
end
