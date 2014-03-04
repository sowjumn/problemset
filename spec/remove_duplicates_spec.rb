require 'spec_helper'
require_relative '../remove_duplicates'


describe RemoveDuplicates do 
  describe '#perform' do
    let(:remove_duplicates) {RemoveDuplicates.new(dup_list)}

    context 'in the array of integers' do
      let(:dup_list) { [5,6,3,9,4,6,8,3,9,22] }
      it 'removes the duplicates' do
        remove_duplicates.perform.should == [5,6,3,9,4,8,22]
      end
    end

    context 'in the array of characters' do
      let(:dup_list) { ['a', 'c', 'e', 'a', 'z', 'p', 'e', 'w'] }
      it 'removes the duplicates' do
        remove_duplicates.perform.should == ['a','c','e','z','p','w']
      end
    end
  end
end