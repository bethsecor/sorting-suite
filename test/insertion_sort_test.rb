gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/insertion_sort'

# Testing for the InsertionSort class
class InsertionSortTest < Minitest::Test
  def test_insertionsort_class
    sorter = SortingSuite::InsertionSort.new
    assert_equal "SortingSuite::InsertionSort", sorter.class.to_s
  end

  def test_insertionsort_sort_accepts_1_arg
    sorter = SortingSuite::InsertionSort.new
    assert_equal 1, sorter.method(:sort).arity
  end

  def test_insertionsort_sort_returns_array
    sorter = SortingSuite::InsertionSort.new
    numbers = []
    assert sorter.sort(numbers).is_a?(Array)
  end

  def test_insertionsort_sorts_array_length_one
    sorter = SortingSuite::InsertionSort.new
    numbers = [1]
    assert_equal [1], sorter.sort(numbers)
  end

  def test_insertionsort_sorts_array_length_two
    sorter = SortingSuite::InsertionSort.new
    numbers = [2, 1]
    assert_equal [1, 2], sorter.sort(numbers)
  end

  def test_insertionsort_sorts_presorted_array_numbers
    sorter = SortingSuite::InsertionSort.new
    numbers = [0, 1, 2, 3, 4, 5]
    assert_equal [0, 1, 2, 3, 4, 5], sorter.sort(numbers)
  end

  def test_insertionsort_sorts_array_shuffled_numbers
    sorter = SortingSuite::InsertionSort.new
    numbers = [1, 3, 4, 5, 2, 0]
    assert_equal [0, 1, 2, 3, 4, 5], sorter.sort(numbers)
  end

  def test_insertionsort_sorts_array_reversed_numbers
    sorter = SortingSuite::InsertionSort.new
    numbers = [5, 4, 3, 2, 1, 0]
    assert_equal [0, 1, 2, 3, 4, 5], sorter.sort(numbers)
  end

  def test_insertionsort_sorts_array_shuffled_letters
    sorter = SortingSuite::InsertionSort.new
    letters = ["g", "s", "r", "a", "w", "c"]
    assert_equal ["a", "c", "g", "r", "s", "w"], sorter.sort(letters)
  end

  def test_insertionsort_sorts_array_reversed_letters
    sorter = SortingSuite::InsertionSort.new
    letters = ["f", "e", "d", "c", "b", "a"]
    assert_equal ["a", "b", "c", "d", "e", "f"], sorter.sort(letters)
  end
end
