require 'pry'

class Owner
  attr_reader :name, :species
  #attr_accessor :cat, :dog
  @@all = []
  
  def initialize(name, species = "human")
   @name = name
   @species = species
   @@all << self
   @cats = []
   #@pets = {:cats => [], :dogs => []}
  end
  
  def say_species
    return "I am a #{species}."
  end 
  
  def self.all 
    @@all
  end
  
  def self.count 
    @@all.count
  end 
  
  def self.reset_all 
    @@all.clear
  end
  
  def cats 
  #   @cats = Cat.new
    @cats << Cat.new(name, owner, mood)
  end 
  
  # def dogs
  #   dog = Dog.new(name, mood)
  #   @pets[:dogs] << dog
  #   @pets[:dogs]
  # end
  
  # def buy_cat(name)
  #   cat = Cat.new(name)
  #   @pets[:cats] << cat
  # end
  
  # def buy_dog
  #   @pets[:dogs] << dog
  # end
  
  
end