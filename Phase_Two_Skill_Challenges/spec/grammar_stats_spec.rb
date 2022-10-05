require "grammar_stats"

RSpec.describe GrammarStats do
  it "returns true when string starts with capital and ends with punctuation" do
    grammar = GrammarStats.new
    expect(grammar.check("Hello!")).to eq true
  end

  it "returns false when string doesn't start with capital and end with punctuation" do
    grammar = GrammarStats.new
    expect(grammar.check("hello")).to eq false
  end

  it "returns an integer of the percentage of texts checked so far that passed" do
    grammar = GrammarStats.new
    grammar.check("Hello!")
    grammar.check("hello")
    expect(grammar.percentage_good).to eq 50
  end
end