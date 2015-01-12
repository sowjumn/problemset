require 'spec_helper'
require_relative '../anagram'

describe Anagram do |variable|
  let(:anagram) { Anagram.new }

  it "should return true when the strings are anagrams" do
    expect(anagram.run("iceman","cinema")).to eq(true)
  end  

  it "should return false when the strings are not anagrams" do
    expect(anagram.run("stressed","dessert")).to eq(false)
  end

  it "should return true when the strings are anagrams and the strings have repeated characters" do
    expect(anagram.run("stressed","desserts")).to eq(true)
  end

  it "should ignore case when checking for anagram" do
    expect(anagram.run("Eleven plus two", "Twelve plus One")).to eq(true)
  end
end