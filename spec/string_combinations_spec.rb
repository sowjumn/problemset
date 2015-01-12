require 'spec_helper'
require_relative '../string_combinations'

describe StringCombinations do 
  let(:string_combinations) { StringCombinations.new }

  it "should return the possible combinations of the string" do
    string_combinations.perform("0ab").should == ["0ab", "0Ab", "0aB", "0AB"]
  end
  
end