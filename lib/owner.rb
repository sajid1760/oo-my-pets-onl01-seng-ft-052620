class Owner
  
attr_reader :name, :species

@@all = []
  
  def initialize(name = "unknown")
    @name = name
    @species = "human"
    @@all << self
  end

  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all = []
  end
  
  def cats 
    catvector = []
    Cat.all.each  do |cat| 
      if cat.owner.name == self.name
        then catvector << cat
      end
    end
    catvector
  end
  
  def dogs 
    dogvector = []
    Dog.all.each  do |dog| 
      if dog.owner.name == self.name
        then dogvector << dog
      end
    end
    dogvector
  end
  
  def say_species
    "I am a human."
  end

  def buy_cat(name)
    Cat.new(name,self)
  end
  
  def buy_dog(name)
    Dog.new(name,self)
  end
  
  def walk_dogs
    self.dogs.each do |dog|
      dog.mood = "happy"
    end
  end
  
  def feed_cats
    self.cats.each do |cat|
      cat.mood = "happy"
    end
  end
    
  
    

end