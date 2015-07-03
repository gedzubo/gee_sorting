require "./heapsort.rb"

describe Array do
  describe "#heapsort" do
    it "sorts array" do
      sorted_array = [3, 5, 3, 1, 6, 1].heapsort
      expect(sorted_array).to eq([6, 5, 3, 3, 1, 1])
    end
  end
end
