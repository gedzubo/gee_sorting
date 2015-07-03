require "./insert_sort.rb"

describe Array do
  describe "#insert_array" do
    it "sorts array" do
      sorted_array = [3, 5, 3, 1, 6, 1].insert_sort
      expect(sorted_array).to eq([1, 1, 3, 3, 5, 6])
    end
  end
end
