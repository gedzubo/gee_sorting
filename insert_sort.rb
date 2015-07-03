class Array
  def insert_sort
    array = self.dup
    (1..(array.length - 1)).each do |index|
      value = array[index]
      tmp = index
      while tmp > 0 and array[tmp - 1] > value
        array[tmp] = array[tmp - 1]
        tmp = tmp - 1
      end
      array[tmp] = value
    end
    return array
  end
end
