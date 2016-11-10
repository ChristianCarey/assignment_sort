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
    it 'should sort the array given it' do 
      expect(bubble_sort(array)).to eq([1,2,3,5,7])
    end
  end

  describe 'swap' do 
    it "swaps two positions in an array" do 
      expect(array.swap(2,3)).to eq([1,3,2,7,5])
    end
  end

  describe "sorted?" do 
    it "returns false for a non sorted array" do 
      expect(array.sorted?).to be false
    end

    it "returns true for a sorted array" do 
      expect([1,2,7,].sorted?).to be true
    end
  end

  describe "merge_sort" do 
    it 'should sort the array given it' do
      expect(merge_sort(array)).to eq([1,2,3,5,7])
    end
  end
end
