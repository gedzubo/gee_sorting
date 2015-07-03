require "./merge_sort.rb"

describe Array do
  describe "#merge_sort" do
    it "sorts array" do
      sorted_array = [3, 5, 3, 1, 6, 1].merge_sort
      expect(sorted_array).to eq([1, 1, 3, 3, 5, 6])
    end
  end
end
