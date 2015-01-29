require 'spec_helper'
require_relative '../number_ones'

describe NumberOnes do
  let(:n_ones) { NumberOnes.new }

  it "should return the correct number for 54" do
    expect(n_ones.run(54)).to eq(4)
  end

  it "should return the correct number for 54" do
    expect(n_ones.alt_run(54)).to eq(4)
  end
end