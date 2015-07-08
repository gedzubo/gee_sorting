require "./bucket_sort.rb"

describe Array do
  describe "#bucket_sort" do
    it "sorts array" do
      sorted_array = [0.3, 0.5, 0.3, 0.12, 0.6, 0.16].bucket_sort
      expect(sorted_array).to eq([0.12, 0.16, 0.3, 0.3, 0.5, 0.6])
    end
  end
end
