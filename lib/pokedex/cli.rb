class Pokedex::CLI 
  
  site = "https://gamewith.net/pokemon-swordshield/article/show/13537"
  
  page = Nokogiri::HTML(open("https://gamewith.net/pokemon-swordshield/article/show/13537"))
  
  def call
    puts "Welcome to the Galarian Pokedex Reader"
    list 
    menu 
    goodbye 
  end 
  
  def list 
    pokemon = page.css "a.w-idb-element td br" 
    #lists all pokemon on page 
    pokemon.map do |pokemon|
      puts pokemon.text 
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
  
 # def location
  #  location/how to obtain
  #end 
  
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
end 