#!/usr/bin/env ruby

# "1...2...3...4...5...6...7...8...9...10..."
array = (1..10).to_a
puts "#{array.join('...')}..."

# "T-10, 9, 8, 7, 6, 5, 4, 3, 2, 1...  BLASTOFF!"
print 'T-'
print array.reverse.join(', ')
puts '...  BLASTOFF!'

# "The last element is 10"
puts "The last element is #{array.last}"

# "The first element is 1"
puts "The first element is #{array.first}"

#  "The third element is 3"
puts "The third element is #{array[2]}"

# "The element with an index of 3 is 4"
index = 3
print "The element with an index of #{index}"
puts " is #{array[index]}"

# "The second from last element is 9"
print 'The second from last element is '
puts array[array.count - 2]

# "The first four elements are '1, 2, 3, 4'"
print 'The first four elements are '
puts "'#{array[0..3].join(', ')}'"

# "If we delete 5, 6 and 7 from the array, we're left with
# [1,2,3,4,8,9,10]"
array.delete_if { |element| element > 4 && element < 8 }
print "If we delete 5, 6 and 7 from the array, we're left with "
puts "[#{array.join(',')}]"

# "If we add 5 at the beginning of the array, we're left with
# [5,1,2,3,4,8,9,10]"
print "If we add 5 at the beginning of the array, we're left with "
puts "[#{array.unshift(5).join(',')}]"

# "If we add 6 at the end of the array, we're left with
# [5,1,2,3,4,8,9,10,6]"
print "If we add 6 at the end of the array, we're left with "
puts "[#{array.push(6).join(',')}]"

# "Only the elements [9, 10] are > 8."
array.select! { |element| element > 8 }
print 'Only the elements '
puts "[#{array.join(', ')}] are > 8."

# "If we remove all the elements, then the length of the array is 0"
print 'If we remove all the elements, then the length of the array'
puts " is #{array.clear.count}"
