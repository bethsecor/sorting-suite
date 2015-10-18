gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/merge_sort'

# Testing for the MergeSort class
class MergeSortTest < Minitest::Test
  def test_mergesort_class
    sorter = SortingSuite::MergeSort.new
    assert_equal "SortingSuite::MergeSort", sorter.class.to_s
  end

  def test_mergesort_sort_accepts_1_arg
    sorter = SortingSuite::MergeSort.new
    assert_equal 1, sorter.method(:sort).arity
  end

  def test_mergesort_sort_returns_array
    sorter = SortingSuite::MergeSort.new
    numbers = []
    assert sorter.sort(numbers).is_a?(Array)
  end

  def test_mergesort_sorts_array_length_one
    sorter = SortingSuite::MergeSort.new
    numbers = [1]
    assert_equal [1], sorter.sort(numbers)
  end

  def test_mergesort_sorts_array_length_two
    sorter = SortingSuite::MergeSort.new
    numbers = [2, 1]
    assert_equal [1, 2], sorter.sort(numbers)
  end

  def test_mergesort_sorts_array_length_three
    sorter = SortingSuite::MergeSort.new
    numbers = [2, 1, 3]
    assert_equal [1, 2, 3], sorter.sort(numbers)
  end

  def test_mergesort_sorts_presorted_array_numbers
    sorter = SortingSuite::MergeSort.new
    numbers = [0, 1, 2, 3, 4, 5]
    assert_equal [0, 1, 2, 3, 4, 5], sorter.sort(numbers)
  end

  def test_mergesort_sorts_array_shuffled_numbers
    sorter = SortingSuite::MergeSort.new
    numbers = [1, 3, 4, 5, 2, 0]
    assert_equal [0, 1, 2, 3, 4, 5], sorter.sort(numbers)
  end

  def test_mergesort_sorts_array_reversed_numbers
    sorter = SortingSuite::MergeSort.new
    numbers = [5, 4, 3, 2, 1, 0]
    assert_equal [0, 1, 2, 3, 4, 5], sorter.sort(numbers)
  end

  def test_mergesort_sorts_array_shuffled_letters
    sorter = SortingSuite::MergeSort.new
    letters = ["g", "s", "r", "a", "w", "c"]
    assert_equal ["a", "c", "g", "r", "s", "w"], sorter.sort(letters)
  end

  def test_mergesort_sorts_array_reversed_letters
    sorter = SortingSuite::MergeSort.new
    letters = ["f", "e", "d", "c", "b", "a"]
    assert_equal ["a", "b", "c", "d", "e", "f"], sorter.sort(letters)
  end

  def test_mergesort_sorts_array_rand_shuffled_dup_letters
    sorter = SortingSuite::MergeSort.new
    letters = ["g", "s", "r", "a", "w", "c", "c"].shuffle
    assert_equal ["a", "c", "c", "g", "r", "s", "w"], sorter.sort(letters)
  end
end
