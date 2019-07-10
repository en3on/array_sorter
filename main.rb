# Sorts array's numerically using recursion
class ArraySorter
  def self.smallest_number_finder(arr, pos = 0, smallest_num = arr[0])
    return smallest_num if pos == arr.length

    smallest_num = arr[pos] if arr[pos] < smallest_num
    smallest_number_finder(arr, pos + 1, smallest_num)
  end

  def self.sorter(arr, sorted_arr = [])
    return sorted_arr if arr.length.zero?

    sorted_arr << arr.delete(smallest_number_finder(arr))
    sorter(arr, sorted_arr)
  end
end

beg = rand(100)
arr = [*beg..(beg + rand(100))]

print ArraySorter.sorter(arr)
