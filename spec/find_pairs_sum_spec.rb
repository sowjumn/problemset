require 'spec_helper'
require_relative '../find_pairs_sum'

describe FindPairsSum do 
  let(:find_pairs_sum) { FindPairsSum.new(given_array, sum) }
  let(:sum) { 8 }

  context "when there is no pair" do
    let(:given_array) { [2,1,4,3] }
    it 'should return an empty array' do
      find_pairs_sum.perform.should == []
    end
  end

  context "when there is one pair" do
    let(:given_array) { [1,5,2,6,0] }
    it "should return an array of array pairs" do
      find_pairs_sum.perform.should == [[2,6]]
    end
  end

  context "when there are multiple pairs" do
    let(:given_array) { [1,3,6,5,7,2,0,4] } 
    it "should return an array of array pairs" do
      find_pairs_sum.perform.should == [[1,7],[3,5],[6,2]]
    end
  end
end