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
  
  def save 
    self.all 
  end 
end
