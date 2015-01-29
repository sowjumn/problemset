require 'spec_helper'
require_relative '../power_of_2'

describe PowerOf2 do
  let(:power_of_2) { PowerOf2.new }
  it "should return true for 4" do
    expect(power_of_2.run(4)).to be_truthy 
  end

  it "should return false for 6" do
    expect(power_of_2.run(6)).to be_falsey
  end

  it "should return false for 0" do
    expect(power_of_2.run(0)).to be_falsey
  end
end