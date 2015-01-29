require 'spec_helper'
require_relative '../reverse_string'

describe ReverseString do
  let(:rev) { ReverseString.new }

  it "should reverse a string" do
    expect(rev.run("sowjanya")).to eq("aynajwos")
  end
end