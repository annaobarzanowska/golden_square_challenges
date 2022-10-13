# File: lib/music_library.rb

class MusicLibrary
    def initialize
      # ...
      @entries = []
    end
  
    def add(track) # track is an instance of Track
      # Track gets added to the library
      # Returns nothing
      @entries << track
    end
  
    def all
      # Returns a list of track objects
      @entries
    end
    
    def search(keyword) # keyword is a string
      # Returns a list of tracks that match the keyword
      @entries.select do |tracks|
        tracks.matches?(keyword)
      end
    end
  end