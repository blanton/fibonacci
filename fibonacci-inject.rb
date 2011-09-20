#!/usr/bin/env ruby

31.times do |x|
  val = (0..x).inject([]) do |memo, x|
    x < 2 ? memo << x : memo << memo[-1] + memo[-2]
  end
  puts "#{x}: #{val.last}"
end
