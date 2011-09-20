#!/usr/bin/env ruby

# an iterative implementation

def fibonacci(v)
  a = []
  a[0] = 0
  a[1] = 1
  2.upto(v) do |x|
    a << a[x-1] + a[x-2]
  end
  return a[v]
end

def main
  count = (ARGV.last || 31).to_i

  count.times do |x|
    val = fibonacci(x)
    puts "#{x}: #{val}"
  end
end

main
