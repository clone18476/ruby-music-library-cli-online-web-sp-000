require 'pry'

class Song
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name, artist=nil)
    @name = name
    self.artist=(artist) if artist != nil
  end 
  
  def save
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.destroy_all
    @@all.clear
  end 
  
  
  def self.create(song)
    song = self.new(song)
    song.save
    song
  end 
  
end
