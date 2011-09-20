#!/usr/bin/env ruby

# this is a very basic (and slow) implemetnation

def fibonacci(v)
  return v if v < 2
  return fibonacci(v-1) + fibonacci(v-2)
end

count = (ARGV.last || 31).to_i

count.times do |x|
  val = fibonacci(x)
  puts "#{x}: #{val}"
end
