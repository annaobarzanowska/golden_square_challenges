require 'music_library'
require 'track'

RSpec.describe do
    it "adds and lists tracks" do
        entry = MusicLibrary.new
        fake_library_entry_1 = Track.new("MJ", "Beat it")
        fake_library_entry_2 = Track.new("KD Lang", "Awoooooooo!")
        entry.add(fake_library_entry_1)
        entry.add(fake_library_entry_2)
        expect(entry.all).to eq [fake_library_entry_1, fake_library_entry_2]
    end

    it "searches tracks by keyword" do
        entry = MusicLibrary.new
        fake_library_entry_1 = Track.new("MJ", "Beat it")
        fake_library_entry_2 = Track.new("KD Lang", "Awoooooooo!")
        entry.add(fake_library_entry_1)
        entry.add(fake_library_entry_2)
        expect(entry.search("KD")).to eq [fake_library_entry_2]
    end
    
end