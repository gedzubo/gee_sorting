require "./quicksort.rb"

describe Array do
  describe "#quicksort" do
    context "using standard version" do
      it "sorts array" do
        sorted_array = [3, 5, 3, 1, 6, 1].quicksort
        expect(sorted_array).to eq([1, 1, 3, 3, 5, 6])
      end
    end
    context "using randomized version" do
      it "sorts array" do
        sorted_array = [3, 5, 3, 1, 6, 1].quicksort("randomized")
        expect(sorted_array).to eq([1, 1, 3, 3, 5, 6])
      end
    end
  end
end
