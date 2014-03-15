#Given an array of numbers check if both arrays have the same set of numbers

require 'spec_helper'
require_relative '../same_set'

describe SameSet do
  let(:same_set) { SameSet.new(arr1,arr2)}
  context "when the arrays are of different length" do
    let(:arr1) { [1,2,3,4] }
    let(:arr2) { [4,2,1] }
    it "should return false" do
      same_set.perform.should == false
    end
  end

  context "when the arrays donot have duplicates" do
    let(:arr1) { [9,2,5,1,8,0,11] }
    let(:arr2) { [1,2,0,11,9,8,5] }
    it "should return true" do
      same_set.perform.should == true
    end
  end

  context "when the arrays do have duplicates" do
    let(:arr1) { [3,8,23,5,8,11,7,3,5] }
    let(:arr2) { [23,11,3,5,7,8,5,3,8] }
    it "should return true" do
      same_set.perform.should == true
    end
  end
end