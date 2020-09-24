require 'pry'

class Song
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
    self.clear
  end 
  
  
  def self.create(song)
    song = self.new(song)
    song.save
    song
  end 
  
  
  
end
