require 'pry'
class Artist
  attr_accessor :name, :artist
  attr_reader :songs

  def initialize(name)
    @name = name

  end

  def songs
     Song.all.select {|song| song.artist == self}
  end

  def self.songs
    # @@songs
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(song_name)
    song_name = Song.new(song_name)

    song_name.artist = self

  end

  def self.song_count
      Song.all.count
  end
end
