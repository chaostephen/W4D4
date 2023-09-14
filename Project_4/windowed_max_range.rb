# 1. [1 2 3] 5
# 2. 1 [2 3 5]

def windowed_max_range(array,number)
    current_max_range = 0
    array.each_with_index do |e, i|
        break if i + number > array.length
        temp = array[i...i+number]
        temp_diff = temp.max - temp.min
        if temp_diff > current_max_range
            current_max_range = temp_diff
        end
    end
    current_max_range
    # go through array and find windows
    # find the minimum and maximum difference between all windows

end



def windowed_max_range_two(arr, window)
    current_max_range = 0
    i = 0
    temp = arr[0...window]
    while i + window <= arr.length 
        if current_max_range < temp.max - temp.min
            current_max_range = temp.max - temp.min
        end
        temp.shift
        temp << arr[window+i]
        i+=1
    end
    current_max_range

end
p windowed_max_range_two([1, 0, 2, 5, 4, 8], 2) # 4, 8
p windowed_max_range_two([1, 0, 2, 5, 4, 8], 3) # 0, 2, 5
p windowed_max_range_two([1, 0, 2, 5, 4, 8], 4) # 2, 5, 4, 8
p windowed_max_range_two([1, 3, 2, 5, 4, 8], 5) # 3, 2, 5, 4, 8