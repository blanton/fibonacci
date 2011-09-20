#!/usr/bin/env ruby

# this implementation uses ruby's Enumerable.inject.
# this supports a memo, and as such, is much faster than the basic implementation.

count = (ARGV.last || 31).to_i

count.times do |x|
  val = (0..x).inject([]) do |memo, x|
    x < 2 ? memo << x : memo << memo[-1] + memo[-2]
  end
  puts "#{x}: #{val.last}"
end
