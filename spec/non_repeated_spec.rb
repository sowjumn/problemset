require 'spec_helper'
require_relative '../non_repeated'

describe NonRepeated do
  let(:non_repeated) { NonRepeated.new }

  it "should find the first non repeated characted in the given string" do
    expect(non_repeated.find("distressed")).to eq('i')
  end
end