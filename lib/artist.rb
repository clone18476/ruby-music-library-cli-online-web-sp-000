require 'pry'

class Artist 
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
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
  
  def self.create(artist)
    artist = self.new(artist)
    artist.save
    artist
  end 
  
  def add_song(song)
    @@all << (song)
  end 
  
  
  
  
  
end