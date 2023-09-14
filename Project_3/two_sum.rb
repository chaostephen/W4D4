def bad_two_sum(arr, target_sum)
    # your code here...
    returned = []
    (0...arr.length).each do |idx|
        (idx+1...arr.length).each do |jdx|
            return true if arr[idx] + arr[jdx] == target_sum
        end
    end
    false
end


def two_sum_two(arr, target_sum)
    keep_track = []
    arr.each_with_index do |e, i|
        subtracted = target_sum - e
        
    end
    false
end

def ok_two_sum?(arr, target_sum)
    arr = arr.sort
    mid = arr.length/2
    temp = arr[mid] + arr[mid+1]

    if temp < target_sum
        arr[mid..-1].each_with_index do |e, i|
            return true if e + arr[i+1] == target_sum
        end
    else
        arr[0..mid].each_with_index do |e, i|
            return true if e + arr[i+1] == target_sum
        end
    end
    false
end

def hash_two_sum(arr, target_sum)
    map = {}
    arr.each do |e|
        map[e] = target_sum-e
    end

    map.each do |k,v|
        return true if k + 
    end

end




arr = [0, 1, 5, 7, 8]
p ok_two_sum?(arr, 6) # => should be true
p ok_two_sum?(arr, 10) # => should be false