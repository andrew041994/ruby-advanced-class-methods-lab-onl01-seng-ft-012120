require "pry"

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    @@all << song = Song.new
    song
  end

  def self.new_by_name(title)
    song = self.new
    song.name = title
    song
  end

  def self.create_by_name(title)
    @@all << song = self.new
    song.name = title
    song
  end

  def self.find_by_name(title)
    @@all.find {|song| song.name==title }
  end

  def self.find_or_create_by_name(title)
      if @@all.include?(title)
      self.find_by_name(title)
    else
      self.create_by_name(title)
    end
  end






end
