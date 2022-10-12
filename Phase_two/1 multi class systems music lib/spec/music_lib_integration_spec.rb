require 'music_lib'
require 'lib_track'

# File: spec/music_player_integration_spec.rb

RSpec.describe "Music Player Integration" do
    it "adds tracks to library" do
      music_lib = MusicLibrary.new
      track_1 = Track.new("Carte Blanche", "Veracocha")
      track_2 = Track.new("Synaesthesia", "The Thrillseekers")
      music_lib.add(track_1)
      music_lib.add(track_2)
      expect(music_lib.all).to eq [track_1, track_2]
    end
    context "with some tracks added" do
      it "searches for tracks by full title" do
        music_lib = MusicLibrary.new
        track_1 = Track.new("Carte Blanche", "Veracocha")
        track_2 = Track.new("Synaesthesia", "The Thrillseekers")
        music_lib.add(track_1)
        music_lib.add(track_2)
        result = music_lib.search_by_title("Carte Blanche")
        expect(result).to eq [track_1]
      end
    end


    it "gets all tracks" do
      library = MusicLibrary.new
      track_1 = Track.new("Carte Blanche", "Veracocha")
      track_2 = Track.new("Synaesthesia", "The Thrillseekers")
      library.add(track_1)
      library.add(track_2)
      result = library.search_by_title("Carte")
      expect(result).to eq [track_1]
    end
    
    it "yields an empty list when no tracks matching" do
      library = MusicLibrary.new  
      track_1 = Track.new("Carte Blanche", "Veracocha")
      track_2 = Track.new("Synaesthesia", "The Thrillseekers")
      library.add(track_1)
      library.add(track_2)
      result = library.search_by_title("fred")
      expect(result).to eq []
    end
end