class Array
  def heapsort
    array = self.dup
    build_max_heap(array)
    array_index = array.length - 1
    (array_index).downto(1).each do |index|
      tmp = array[0]
      array[0] = array[index]
      array[index] = tmp
      array.heap_size - 1
      max_heapify(array, 0)
    end
    return array
  end

  attr_accessor :heap_size

  protected

  def build_max_heap(array)
    array.heap_size = array.length - 1
    (array.length - 1).downto(0).each do |index|
      max_heapify(array, index)
    end
  end

  def max_heapify(array, i)
    left = heap_left(i)
    right = heap_right(i)
    if left <= array.heap_size and array[left] > array[i]
      largest = left
    else
      largest = i
    end
    if right <= array.heap_size and array[right] > array[largest]
      largest = right
    end
    if largest != i
      tmp = array[i]
      array[i] = array[largest]
      array[largest] = tmp
      max_heapify(array, largest)
    end
  end

  def heap_parent(index)
    index/2
  end

  def heap_left(index)
    index * 2
  end

  def heap_right(index)
    index * 2 + 1
  end

end
