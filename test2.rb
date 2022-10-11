Class Song 
  attr_accessor :title, :artist
  
end

Class Artist
  attr_accessor :name, :genre
  
end

drake = Artist.new("Drake", "rap") 
#Cool. Instance of Artist. Has #name & #genre methods
hotline_bling = Song.new("Hotline Bling")
#Cool. Instance of song. Has #title & #artist

puts hotline_bling.artist = drake
puts hotline_bling.artist.genre 

