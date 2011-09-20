#!/usr/bin/env ruby

def fibonacci(v)
  return 0 if v == 0
  return 1 if v == 1
  return fibonacci(v-1) + fibonacci(v-2)
end

count = (ARGV.last || 31).to_i

count.times do |x|
  val = fibonacci(x)
  puts "#{x}: #{val}"
end
