require 'spec_helper'
require_relative '../factorial'

describe Factorial do 
  let(:factorial) { Factorial.new(num) }

  context "when the number is negative" do
    it "should return raise an error" do
      expect { factorial.perform }.to raise_error
    end
  end

  context "when the number is 0" do 
    let(:num) { 0 }
    it "should return 1" do
      factorial.perform.should == 1
    end
  end

  context "when the number is a positive number" do
    let(:num) { 5 }
    it "should return 60" do
      factorial.perform.should == 120
    end
  end
end