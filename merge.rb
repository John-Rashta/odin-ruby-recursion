def merge_sort(arr)
  return arr if arr.size <= 1

  mid = (0 + arr.size) / 2
  left_arr = merge_sort(arr[0..(mid - 1)])
  right_arr = merge_sort(arr[mid..])
  left_index = 0
  right_index = 0

  temp_arr = []
  while left_index < left_arr.size && right_index < right_arr.size
    if left_arr[left_index] > right_arr[right_index]
      temp_arr.push(right_arr[right_index])
      right_index += 1
    else
      temp_arr.push(left_arr[left_index])
      left_index += 1
    end
  end

  temp_arr.concat(left_arr[left_index..]) if left_index < left_arr.size
  temp_arr.concat(right_arr[right_index..]) if right_index < right_arr.size
  temp_arr
end

p merge_sort([105, 79, 100, 110])
