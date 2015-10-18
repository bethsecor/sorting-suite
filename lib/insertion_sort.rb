module SortingSuite
  # InsertionSort class uses the insertion sort algorithm to sort an array
  class InsertionSort
    def sort(array)
      @sorted_array = Array.new(array.length)
      @sorted_array[0] = array.shift

      loop do
        break if array == []
        next_element = array.shift
        @sorted_array.insert(where_to_insert(next_element), next_element)
        @sorted_array.pop
      end
      @sorted_array
    end

    def where_to_insert(element)
      where_element = @sorted_array.map do |e|
        if !e.nil? # e != nil
          element < e
        else
          true
        end
      end
      where_element.index(true)
    end
  end
end
