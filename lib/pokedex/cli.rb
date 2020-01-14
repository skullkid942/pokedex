Class Pokedex::CLI 
  
  def call
    puts "Welcome to the Galarian Pokedex Reader"
  end 
  
  def list 
    pokemon list 
  end 
  
  def name 
    pokemon_name 
  end 
  
  def dex_number
    pokedex number 
  end 
  
  def type
    type
  end 
  
  def location
    location/how to obtain
  end 
  
  def menu
    input = nil
    while input != "exit"
      puts "Enter the name of the Pokemon you'd like more info on, type list to see the them again, or type exit: "
      input = gets.strip.downcase

      if input ==  pokemon_name
        pokemon = @pokemon[input.pokemon_name]
        puts "#{dex_number} - #{pokemon} - #{type} - #{location}"
      elsif input == "list"
        list
      else
        puts "Not sure what you want, type list or exit."
      end
    end
  end 
  
  def goodbye
    
  end 
  
  
end 