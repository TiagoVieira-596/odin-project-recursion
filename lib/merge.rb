def merge_sort(unorganized_list)
  list_length = unorganized_list.length
  return unorganized_list if list_length == 1

  first_half = merge_sort(unorganized_list.slice(0, list_length / 2))
  second_half = merge_sort(unorganized_list.slice(list_length / 2, list_length))
  merge(first_half, second_half, unorganized_list)
end

def merge(left_arr, right_arr, original_arr)
  left_size = original_arr.length / 2
  right_size = original_arr.length - left_size
  original_index = 0
  left_index = 0
  right_index = 0
  until left_index == left_size || right_index == right_size
    if left_arr[left_index] >= right_arr[right_index]
      original_arr[original_index] = right_arr[right_index]
      right_index += 1
    else
      original_arr[original_index] = left_arr[left_index]
      left_index += 1
    end
    original_index += 1
  end
  until right_index == right_size
    original_arr[original_index] = right_arr[right_index]
    original_index += 1
    right_index += 1
  end
  until left_index == left_size
    original_arr[original_index] = left_arr[left_index]
    original_index += 1
    left_index += 1
  end
  original_arr
end

print merge_sort([23_456_785, 45_631, 0, -28, -45_678, -42, 23_456_789, -19_398_349_873_298_237, 4])
