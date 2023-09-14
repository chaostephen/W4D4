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
        @store = []
    end

    def empty?
        @store.length==0
    end

    def pop
        @store.pop
    end
    def push(n)
        @store<<n
    end
    def size
        @store.length
    end
    def peek(n)
        @store[-n..-1]
    end
end

def windowed_max_range_stackqueue(arr,window)
    stack1 = MyStack.new
    stack2 = MyStack.new
    stack1.store = arr[0...window]
    max_diff = 0
    if stack1.store.max - stack1.store.min > max_diff
        max_diff = stack1.store.max - stack1.store.min
    end
    i = 1
    until window+i < arr.length
        stack2.push(stack1.pop)
        stack2.push(arr[window+i])
        i+=1
    end
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

p windowed_max_range_mystack([1, 0, 2, 5, 4, 8], 2) # 4 #4, 8
p windowed_max_range_mystack([1, 0, 2, 5, 4, 8], 3) # 5 #0, 2, 5
p windowed_max_range_mystack([1, 0, 2, 5, 4, 8], 4) # 6 #2, 5, 4, 8
p windowed_max_range_mystack([1, 3, 2, 5, 4, 8], 5) # 6 #3, 2, 5, 4, 8