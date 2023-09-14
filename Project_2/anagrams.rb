
# def anagram?(str1,str2)
#     total=str1+str2
#     total=total.split("").sort
#     total.each.with_index do |ele,idx|
#         if idx%2==0
#             if ele!=total[idx+1]
#                 return false
#             end
#         end
#     end
#     true
# end

def anagram?(str1,str2)
    hsh=Hash.new(0)
    str1.each_char do |char|
        hsh[char]+=1
    end
    str2.each_char do |char|
        hsh[char]-=1
    end
    return true if hsh.all? {|k,v|v.zero?}
    false
end

p anagram?("gizmo", "sally")    #=> false
p anagram?("elvis", "lives")    #=> true