def get_position (ordered_array,target_number)
    left = 0
    right = ordered_array.length - 1

    while left <= right
        mid = left + (right - left) / 2

        if ordered_array[mid] == target_number
            return mid
        elsif ordered_array[mid] < target_number
            left = mid + 1
        else
            right = mid -1
        end
    end

    return left

end
num=1
ordered_array=[]
while num != ''
puts 'enter a number for the array (when done press enter)'
num = gets.chomp
ordered_array << num.to_i unless num == ''
end

puts 'what number do you want to look for?'
target_number = gets.chomp.to_i
puts get_position(ordered_array, target_number)