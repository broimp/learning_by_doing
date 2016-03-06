#!/usr/bin/env ruby

array = []

# "1...2...3...4...5...6...7...8...9...10..."
(0..9).each do |index|
  value = index + 1
  array[index.to_i] = value.to_s
  print value
  print '...'
end

# "T-10, 9, 8, 7, 6, 5, 4, 3, 2, 1...  BLASTOFF!"
puts
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
print " is #{array[index]}"
puts

# "The second from last element is 9"
print 'The second from last element is '
print array[array.count - 2]
puts

# "The first four elements are '1, 2, 3, 4'"
array_2 = array[0..3].to_s
array_2.delete!('"')
array_2.delete!('[')
array_2.delete!(']')
print 'The first four elements are '
puts "'#{array_2}'"

# "If we delete 5, 6 and 7 from the array, we're left with
# [1,2,3,4,8,9,10]"
array_2 = array.slice(0, 4) + array.slice(7, 3)
print "If we delete 5, 6 and 7 from the array, we're left with "
print array_2.to_s.delete('"').delete(' ')
puts

# "If we add 5 at the beginning of the array, we're left with
# [5,1,2,3,4,8,9,10]"
array_2.unshift(5)
print "If we add 5 at the beginning of the array, we're left with "
print array_2.to_s.delete('"').delete(' ')
puts

# "If we add 6 at the end of the array, we're left with
# [5,1,2,3,4,8,9,10,6]"
array_2.push(6)
print "If we add 6 at the end of the array, we're left with "
print array_2.to_s.delete('"').delete(' ')
puts

# "Only the elements [9, 10] are > 8."
array_2 = array.values_at(8, 9)
print 'Only the elements '
puts "#{array_2.to_s.delete('"')} are > 8."

# "If we remove all the elements, then the length of the array is 0"
print 'If we remove all the elements, then the length of the array'
puts " is #{array.clear.count}"
