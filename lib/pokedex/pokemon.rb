class Pokemon
  attr_accessor :pokemon_name, :dex_number, :location
  
  @@all = []
  
  def initiialize
    @pokemon_name = pokemon_name
    @dex_number = dex_number
    @location = location
  end 
  
  def pokemon_name
    
  end
  
  def dex_number
    
  end 
  
  def location
    
  end 
  
  def self.all 
    @@all << Scraper.all_names
  end 
  
  
  
end 