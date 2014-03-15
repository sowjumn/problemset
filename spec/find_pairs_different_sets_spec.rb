require 'spec_helper'
require_relative '../find_pairs_different_sets'
#Given two sets of arrays find the pair one from each array that can make up to the sum


describe FindPairsDifferentSets do |variable|
  let(:find_pairs_different_sets) { FindPairsDifferentSets.new(arr1,arr2,sum)}
  let(:sum) { 8 }

  context "when there is no pair" do
    let(:arr1) { [0,6,1,7,4] }
    let(:arr2) { [11,9,3,5] }
    it "should return an empty array" do
      find_pairs_different_sets.perform.should == []
    end
  end

  context "when there is one pair" do
    let(:arr1) { [0,6,1,5,4] }
    let(:arr2) { [11,9,2,5] }
    it "should return a array with one pair" do
      find_pairs_different_sets.perform.should == [[6,2]]
    end
  end

  context "when there is more pairs" do
    let(:arr1) { [0,6,1,5,4] }
    let(:arr2) { [11,7,2,3,0] }
    it "should return an array with 3 pairs" do
      find_pairs_different_sets.perform.should == [[1,7],[6,2],[5,3]]
    end
  end
end