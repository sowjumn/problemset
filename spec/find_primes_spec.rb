require 'spec_helper'
require_relative '../find_primes'

describe FindPrimes do

  context 'when no limit is given' do
      let(:find_primes) { FindPrimes.new }

    it "should return the primes between 1 and 10" do
      find_primes.perform.should == [2,3,5,7]
    end
  end

  context "when a limit is given" do
    let(:find_primes) { FindPrimes.new(20) }

    it "should return the primes between 1 and limit" do
      find_primes.perform.should == [2,3,5,7,11,13,17,19]
    end
  end
end