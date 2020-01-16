class Scraper
  
  def self.all_names
    page = Nokogiri::HTML(open("https://gamewith.net/pokemon-swordshield/article/show/13537"))
    names = page.css "tr.w-idb-element" #text name
    names.map do |name|
      puts name.text
  end 
  
  def self.name_scraper
    page = Nokogiri::HTML(open("https://gamewith.net/pokemon-swordshield/article/show/13537"))
    names = page.css "tr.w-idb-element.grass.land.plant.s3" #text name
  end 
  
  def self.number_scraper
    page = Nokogiri::HTML(open("https://gamewith.net/pokemon-swordshield/article/show/13537"))
    number = page.css "a.w-idb-element td /noscript"
  end 
  
  def self.location_scraper
    page = Nokogiri::HTML(open("https://gamewith.net/pokemon-swordshield/article/show/13537"))
    location = page.css "a.w-idb-element td"
  end 
  
end 
end 