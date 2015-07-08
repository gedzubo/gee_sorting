require_relative "insert_sort.rb"

class Array
  def bucket_sort
    array = self.dup
    lenght = array.length
    buckets = []
    (0..lenght - 2).each do |index|
      buckets[index] = []
    end
    (0..lenght - 1).each do |index|
      buckets[msbits(array[index], lenght)] << array[index]
    end
    new_array = []
    buckets.each do |bucket|
      new_array << bucket.insert_sort
    end
    return new_array.flatten
  end

  private

  def msbits(x, k)
    (x/2**(4-k)).floor
  end

end
