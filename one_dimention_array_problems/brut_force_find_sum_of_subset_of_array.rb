arr = [2, 3, 1, 5, 4, 2]

start_index = 2
end_index = 4

sum = 0

(start_index..end_index).each do |i|
  sum += arr[i]
end

puts sum