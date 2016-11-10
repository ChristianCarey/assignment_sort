require 'insertion_sort'
require 'rspec'

describe 'insertion_sort' do
  let(:array) { [1,3,7,2,5] }
  it 'should sort the array given it' do
    expect(insertion_sort(array)).to eq([1,2,3,5,7])
  end
end
