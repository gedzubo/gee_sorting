class Array
  def quicksort
    array = self.dup
    quicksort_method(array, 0, array.length - 1)
  end

  protected

  def quicksort_method(array, beginning, ending)
    if beginning < ending
      middle = partition(array, beginning, ending)
      quicksort_method(array, beginning, middle - 1)
      quicksort_method(array, middle + 1, ending)
    end
    return array
  end

  def partition(array, beginning, ending)
    last = array[ending]
    tmp = beginning - 1
    (beginning..ending-1).each do |index|
      if array[index] <= last
        tmp = tmp + 1
        exchange(array, tmp, index)
      end
    end
    exchange(array, tmp + 1, ending)
    tmp + 1
  end

  def exchange(array, x, y)
    tmp = array[y]
    array[y] = array[x]
    array[x] = tmp
  end
end
