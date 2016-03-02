#!/usr/bin/env ruby

# Mad Libs Vacations
text = [
  'A vacation is when you take a trip to some 00 place',
  'with your 01 family. Usually you go to some place',
  'that is near a/an 02 or up on a/an 03.',
  'A good vacation place is one where you can ride 04',
  'or play 05 or go hunting for 06. I like',
  'to spend my time 07 or 08.',
  'When parents go on a vacation, they spend their time eating',
  'three 09 a day, and fathers play golf, and mothers',
  'sit around 10. Last summer, my little brother',
  'fell in a/an 11 and got poison 12 all',
  'all over his 13. My family is going to go to (the)',
  '14, and I will practice 15. Parents',
  'need vacations more than kids because parents are always very',
  '16 and because they have to work 17',
  'hours every day all year making enough 18 to pay',
  'for the vacation.'
]
request = [
  'an adjective:',
  'another adjective:',
  'a noun:',
  'another noun:',
  'a plural noun:',
  'a game:',
  'another plural noun:',
  "a verb ending in 'ing':",
  "another verb ending in 'ing':",
  'another plural noun:',
  "another verb ending in 'ing':",
  'another noun:',
  'a plant:',
  'a part of the body:',
  'a place:',
  "another verb ending in 'ing':",
  'another adjective:',
  'a number:',
  'another plural noun:',
  'Here is your madlib:'
]
prompt = [
  'horrible',
  'smelly',
  'plane',
  'train',
  'computers',
  'Jeopardy',
  'school busses',
  'yelling',
  'sleeping',
  'bicycles',
  'swimming',
  'tree',
  'cactus',
  'elbow',
  'Paris',
  'dreaming',
  'awesome',
  '566',
  'buckets'
]

# interrogatory
count = 0
prompt.each do |answer|
  puts "Give me #{request[count]}"
  puts answer
  count += 1
end
puts request[count]

# mad_libs vacations
text.each do |line|
  (0..18).each do |index|
    pad_index = format('%02d', index)
    line.gsub!(pad_index, prompt[index]) if line.include?(pad_index)
  end
  puts line
end
