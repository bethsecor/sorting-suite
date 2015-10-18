require_relative './lib/bubble_sort'
require_relative './lib/insertion_sort'
require_relative './lib/merge_sort'

# Bubble Sort
sorter = SortingSuite::BubbleSort.new
sorted_letters = sorter.sort(["d", "b", "a", "c"])
puts sorted_letters.to_s

sorter = SortingSuite::BubbleSort.new
sorted_numbers = sorter.sort([8, 3, 2, 7, 3, 1])
puts sorted_numbers.to_s

# Insertion Sort
sorter = SortingSuite::InsertionSort.new
sorted_letters = sorter.sort(["d", "b", "a", "c"])
puts sorted_letters.to_s

sorter = SortingSuite::InsertionSort.new
sorted_numbers = sorter.sort([8, 3, 2, 7, 3, 1])
puts sorted_numbers.to_s

# Merge Sort
sorter = SortingSuite::MergeSort.new
sorted_letters = sorter.sort(["d", "b", "a", "c"])
puts sorted_letters.to_s

sorter = SortingSuite::MergeSort.new
sorted_numbers = sorter.sort([8, 3, 2, 7, 3, 1])
puts sorted_numbers.to_s
