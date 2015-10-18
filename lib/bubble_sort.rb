module SortingSuite
  # BubbleSort class uses the classic bubble sort algorithm to sort an array
  class BubbleSort
    def sort(array)
      loop do
        swaps = []
        for i in 0..array.length - 2
          if should_swap?(array, i)
            swap(array, i)
            swaps << true
          else
            swaps << false
          end
        end
        break unless swaps.include?(true)
      end
      array
    end

    def should_swap?(array, index)
      previous, current = array[index..index + 1]
      current < previous
    end

    def swap(array, index)
      previous, current = array[index..index + 1]
      array[index..index + 1] = current, previous
    end
  end
end
