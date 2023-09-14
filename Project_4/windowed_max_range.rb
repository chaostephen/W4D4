# 1. [1 2 3] 5
# 2. 1 [2 3 5]

def windowed_max_range(array,number)
    temp = []
    (0...array.length).each.with_index do |ele,idx|
        temp<<ele
        jdx=idx + 1
        while jdx<array.length
            number-1.times do |i|
                temp<<array[jdx]
                jdx+=1
            end
        end
    end
    temp

end
p windowed_max_range([1, 0, 2, 5, 4, 8], 2) # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) # 3, 2, 5, 4, 8