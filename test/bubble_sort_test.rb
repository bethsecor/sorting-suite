gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/bubble_sort'

# Testing for the BubbleSort class
class BubbleSortTest < Minitest::Test
  def test_bubblesort_class
    sorter = SortingSuite::BubbleSort.new
    assert_equal "SortingSuite::BubbleSort", sorter.class.to_s
  end

  def test_bubblesort_sort_accepts_1_arg
    sorter = SortingSuite::BubbleSort.new
    assert_equal 1, sorter.method(:sort).arity
  end

  def test_bubblesort_sort_returns_array
    sorter = SortingSuite::BubbleSort.new
    numbers = []
    assert sorter.sort(numbers).is_a?(Array)
  end

  def test_bubblesort_should_swap
    sorter = SortingSuite::BubbleSort.new
    numbers = [2, 1]
    assert_equal true, sorter.should_swap?(numbers, 0)
  end

  def test_bubblesort_swap_two_elements
    sorter = SortingSuite::BubbleSort.new
    numbers = [2, 1]
    assert_equal [1, 2], sorter.swap(numbers, 0)
  end

  def test_bubblesort_sorts_array_length_one
    sorter = SortingSuite::BubbleSort.new
    numbers = [1]
    assert_equal [1], sorter.sort(numbers)
  end

  def test_bubblesort_sorts_array_length_two
    sorter = SortingSuite::BubbleSort.new
    numbers = [2, 1]
    assert_equal [1, 2], sorter.sort(numbers)
  end

  def test_bubblesort_sorts_presorted_array_numbers
    sorter = SortingSuite::BubbleSort.new
    numbers = [0, 1, 2, 3, 4, 5]
    assert_equal [0, 1, 2, 3, 4, 5], sorter.sort(numbers)
  end

  def test_bubblesort_sorts_array_shuffled_numbers
    sorter = SortingSuite::BubbleSort.new
    numbers = [1, 3, 4, 5, 2, 0]
    assert_equal [0, 1, 2, 3, 4, 5], sorter.sort(numbers)
  end

  def test_bubblesort_sorts_array_reversed_numbers
    sorter = SortingSuite::BubbleSort.new
    numbers = [5, 4, 3, 2, 1, 0]
    assert_equal [0, 1, 2, 3, 4, 5], sorter.sort(numbers)
  end

  def test_bubblesort_sorts_array_shuffled_letters
    sorter = SortingSuite::BubbleSort.new
    letters = ["g", "s", "r", "a", "w", "c"]
    assert_equal ["a", "c", "g", "r", "s", "w"], sorter.sort(letters)
  end

  def test_bubblesort_sorts_array_reversed_letters
    sorter = SortingSuite::BubbleSort.new
    letters = ["f", "e", "d", "c", "b", "a"]
    assert_equal ["a", "b", "c", "d", "e", "f"], sorter.sort(letters)
  end
end
