require 'sorting'
require 'rspec'

describe 'Sorting algorithms' do
  let(:array) { [1,3,7,2,5] }

  describe 'insertion_sort' do
    it 'should sort the array given it' do
      expect(insertion_sort(array)).to eq([1,2,3,5,7])
    end
  end

  describe 'bubble_sort' do
    it 'should sort the array given it'
  end
end
