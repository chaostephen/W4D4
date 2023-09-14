# def my_min(list)
#     list.sort[0]
# end

def my_min(list)
    min=list[0]
    list.each do |ele|
        min=ele if ele<min
    end
    min
end
list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)  # =>  -5


# # possible sub-sums
# [5]           # => 5
# [5, 3]        # => 8 --> we want this one
# [5, 3, -7]    # => 1
# [3]           # => 3
# [3, -7]       # => -4
# [-7]          # => -7
# ```

# Example 2:

# ```ruby
# list = [2, 3, -6, 7, -6, 7]
# largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])
# ```

# Example 3:

# ```ruby
# list = [-5, -1, -3]
# largest_contiguous_subsum(list) # => -1 (from [-1])
# def largest_contiguous_subsum(list)
#     largest_sum=0
#     list.each.with_index do |ele,idx|
#         (idx+1...list.length).each do |jdx|
#             largest_sum=ele + list[jdx] if largest_sum<ele + list[jdx]
#         end
#     end
#     largest_sum
# end

def largest_contiguous_subsum(list)
    # largest_sum=0
    # first_ele=0
    # last_ele=list.length-1
    # while first_ele<last_ele
    # end
end


list = [5, 3, -7]
p largest_contiguous_subsum(list) # => 8