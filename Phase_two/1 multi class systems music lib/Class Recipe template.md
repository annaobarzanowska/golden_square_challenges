{{PROBLEM}} Class Design Recipe
1. Describe the Problem

Put or write the user story here. Add any clarifying notes you might have.
2. Design the Class Interface

Include the initializer and public methods with all parameters and return values.

# File: lib/music_library.rb

class MusicLibrary
    def initialize
      # ...
    end
  
    def add(track) # track is an instance of Track
      # Track gets added to the library
      # Returns nothing
    end
  
    def all
      # Returns a list of track objects
    end
    
    def search_by_title(keyword) # keyword is a string
      # Returns a list of tracks with titles that include the keyword
    end
  end

# File: lib/track.rb

class Track
  def initialize(title, artist) # title and artist are both strings
  end

  def title 
    # Returns the title as a string
  end

  def format
    # Returns a string of the form "TITLE by ARTIST"
  end
end

3. Create Examples as Tests

Make a list of examples of how the class will behave in different situations.

# 1 - gets all tracks
library = MusicLibrary.new
track_1 = Track.new("Carte Blanche", "Veracocha")
track_2 = Track.new("Synaesthesia", "The Thrillseekers")
library.add(track_1)
library.add(track_2)
library.all # => [track_1, track_2]

# 2 - searches by keyword
library = MusicLibrary.new
track_1 = Track.new("Carte Blanche", "Veracocha")
track_2 = Track.new("Synaesthesia", "The Thrillseekers")
library.add(track_1)
library.add(track_2)
library.search_by_title("Carte") # => [track_1]

# 3 - searches by substring too
library = MusicLibrary.new
track_1 = Track.new("Carte Blanche", "Veracocha")
track_2 = Track.new("Synaesthesia", "The Thrillseekers")
library.add(track_1)
library.add(track_2)
library.search_by_title("aes") # => [track_2]

# 4 - if no results, search yields empty list
library = MusicLibrary.new
track_1 = Track.new("Carte Blanche", "Veracocha")
track_2 = Track.new("Synaesthesia", "The Thrillseekers")
library.add(track_1)
library.add(track_2)
library.search_by_title("zzz") # => []

# 5 - formats individual tracks
track = Track.new("Carte Blanche", "Veracocha")
track.format # => "Carte Blanche by Veracocha"
4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
