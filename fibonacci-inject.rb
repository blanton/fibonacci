#!/usr/bin/env ruby

count = (ARGV.last || 31).to_i

count.times do |x|
  val = (0..x).inject([]) do |memo, x|
    x < 2 ? memo << x : memo << memo[-1] + memo[-2]
  end
  puts "#{x}: #{val.last}"
end
