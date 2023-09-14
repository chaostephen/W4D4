
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


# def anagram?(str1, str2)
#     hash1 = {}
#     hash2 = {}
#     str1.each_char{|c| hash1[c] = str1.count(c)}
#     str2.each_char{|c| hash2[c] = str2.count(c)}
#     hash1 == hash2
# end

# p anagram?("gizmo", "sally")    #=> false
# p anagram?("elvis", "lives")    #=> true




def first_anagram(str, target)
    permutations = str.chars.permutation.to_a
    permutations.each do |pe| 
        return true if pe.join("") == target
    end
    false
end




def second_anagram(str1, str2)
    temp = str2.chars
    str1.chars.each do |c|
        found_idx = temp.index(c)
        p "found_idx: #{found_idx}"
        temp[found_idx] = ""
    end 
    temp.join("").length ==  0

end

def jumble_sort(str)
    alphabet = ('a'..'z').to_a
    sorted = false
    until sorted
        sorted = true
        (0..str.length-2).each do |i|
            if alphabet.index(str[i]) > alphabet.index(str[i+1])
                str[i], str[i+1] = str[i+1], str[i]
                sorted = false
            end
        end
    end
    str
end


def third_anagram(str1, str2)
    jumble_sort(str1) == jumble_sort(str2)
end






# p jumble_sort("ohlel")

def fourth_anagram(str1, str2)
    hsh1 = Hash.new(0)
    # hsh2=Hash.new(0)
    
    str1.each_char do |char|
        hsh1[char]+=1
    end
    str2.each_char do |char|
        hsh1[char]-=1
    end
    hsh1.all?  {|k,v|v.zero?}
end
p fourth_anagram("hello", "ohlel")