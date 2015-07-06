require "./counting_sort.rb"

describe Array do
  describe "#counting_sort" do
    it "sorts array" do
      sorted_array = [3, 5, 3, 1, 6, 1].counting_sort
      expect(sorted_array).to eq([1, 1, 3, 3, 5, 6])
    end
  end
end
