class Array
  def counting_sort
    array = self.dup
    min = array.min
    max = array.max

    counting_array = Array.new(max - min + 1, 0);
    storage_array = array.each { |n| counting_array[n - min] += 1 }

    (0...counting_array.size).map { |i| [i + min] * counting_array[i] }.flatten
  end

end
