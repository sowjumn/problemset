require 'spec_helper'
require_relative '../find_duplicates'

describe FindDuplicates do
  let(:find_duplicates) { FindDuplicates.new(my_str)}

  context "when the string doesnot have duplicates" do
    let(:my_str) { "Sowjany" }
    it "should return an empty array" do
      find_duplicates.perform.should == []
    end
  end

  context "when the string does have duplicates" do
    let(:my_str) { "Mississippi" }
    it "should return the duplicate letters" do
      find_duplicates.perform.should include("i","s","p")
    end
  end
end