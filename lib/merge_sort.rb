module SortingSuite
  # MergeSort class uses the merge sort algorithm to sort an array
  class MergeSort
    def sort(array)
      return array if array.length <= 1

      array1 = sort(array[0..array.length / 2 - 1])
      array2 = sort(array[array.length / 2..array.length])

      merge(array1, array2)
    end

    def merge(array1, array2)
      merged_array = []
      array1.map!.with_index do |e1, i1|
        array2.map!.with_index do |e2, i2|
          if !e1.nil? && !e2.nil?
            if e1 < e2
              merged_array << e1
              merged_array << e2 if i2 == array2.length - 1 && i1 == array1.length - 1
              e1 = nil
              e2 = nil if i2 == array2.length - 1 && i1 == array1.length - 1
            else
              merged_array << e2
              merged_array << e1 if i2 == array2.length - 1 && i1 == array1.length - 1
              e2 = nil
            end
          end
          merged_array << array1.compact if array2.compact == [] && i1 == array1.length - 1 && i2 == array2.length - 1
          merged_array << array2.compact if e1.nil? && i2 == array2.length - 1 && i1 == array1.length - 1 && array2.compact.length != 1
          e2
        end
        e1
      end
      merged_array.flatten
    end
  end
end
