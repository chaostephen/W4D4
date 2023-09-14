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

class MyStack
    def initialize
        @in_stack = []
    end

    def empty?
        @in_stack.length==0
    end

    def pop
        @in_stack.pop
    end
    def push(n)
        @in_stack<<n
    end
    def size
        @in_stack.length
    end
    def peek(n)
        @in_stack[-n..-1]
    end
end
def stackqueue(arr)
    hsh1=Hash.new(0)
    min=arr[0]
    max=arr[0]
    arr.each.with_index do |ele,idx|
        if idx !=0
            min,max=hsh1[arr[idx-1]]
            if ele>max
                max=ele
            else ele<min
                min=ele
            end
        end
        hsh1[ele]=min,max
    end
    hsh1
end
class StackQueue
    def initialize
        @in_stack = MyStack.new
        @out_stack = MyStack.new
    end
    
    def enqueue(n)
        @in_stack << n
    end
    
    def flip
        until @in_stack.empty?
            @out_stack << @in_stack.pop
        end
    end
    
    def dequeue
        if @out_stack.empty?
            flip
        end
        return @out_stack.pop
    end
    
    def show
        @out_stack[0]
    end
    
    def size
        @in_stack.size + @out_stack.size
    end
    
    def empty?
        @in_stack.empty? && @out_stack.empty?
    end
end

def windowed_max_range_stackqueue(arr,window)
    stack = StackQueue.new
    stack.in_stack = arr[0...window]
    max_diff = stackqueue(stack.in_stack)[-1][1]-stackqueue(stack.in_stack)[-1][0]
    
    
    # i = 1
    # until window+i < arr.length
    #     stack.out_stack.push(stack.in_stack.pop)
    #     stack.out_stack.push(arr[window+i])
    #     i+=1
    # end
    if stackqueue(stack.in_stack)[-1][1]-stackqueue(stack.in_stack)[-1][0] > max_diff
        max_diff = stackqueue(stack.in_stack)[-1][1]-stackqueue(stack.in_stack)[-1][0]
    end
end



# p windowed_max_range_mystack([1, 0, 2, 5, 4, 8], 2) # 4 #4, 8
# p windowed_max_range_mystack([1, 0, 2, 5, 4, 8], 3) # 5 #0, 2, 5
# p windowed_max_range_mystack([1, 0, 2, 5, 4, 8], 4) # 6 #2, 5, 4, 8
# p windowed_max_range_mystack([1, 3, 2, 5, 4, 8], 5) # 6 #3, 2, 5, 4, 8


p stackqueue([1,2,3,4,5])
