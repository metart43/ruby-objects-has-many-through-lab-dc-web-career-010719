require 'pry'
class Artist
  attr_accessor :song, :genre, :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

    def songs
      Song.all.select do |song|
        song.artist == self
      end
    end

    def genres
      songs.map do |song|
        song.genre
      end
    end
end
