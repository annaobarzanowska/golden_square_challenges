require 'music_library'

RSpec.describe MusicLibrary do
    it "adds and lists tracks" do
        entry = MusicLibrary.new
        fake_library_entry_1 = double :fake_library_entry
        fake_library_entry_2 = double :fake_library_entry
        entry.add(fake_library_entry_1)
        entry.add(fake_library_entry_2)
        expect(entry.all).to eq [fake_library_entry_1, fake_library_entry_2]
    end

    it "returns a list of tracks matching the keyword" do
        entry = MusicLibrary.new
        fake_library_entry_1 = double :fake_library_entry, matches?: true
        fake_library_entry_2 = double :fake_library_entry, matches?: false
        entry.add(fake_library_entry_1)
        entry.add(fake_library_entry_2)
        expect(entry.search('fake track')).to eq [fake_library_entry_1]
    end
end