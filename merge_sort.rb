class Array
  def merge_sort
    merge_sort_method(self.dup)
  end

  protected

  def merge_sort_method(array)
    return array if array.length <= 1

    middle = array.length / 2
    left = array[0..middle - 1]
    right = array[middle..-1]

    left_array = merge_sort_method(left)
    right_array = merge_sort_method(right)

    merge(left_array, right_array)
  end

  def merge(left, right)
    result = []

    while left.any? and right.any?
      if left[0] <= right[0]
        result << left[0]
        left.shift
      else
        result << right[0]
        right.shift
      end
    end

    while left.any?
      result << left[0]
      left.shift
    end

    while right.any?
      result << right[0]
      right.shift
    end
    result
  end

end
