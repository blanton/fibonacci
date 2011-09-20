#!/usr/bin/env ruby

# an iterative implementation with memo

class Fibonacci

  def initialize
    @memo = []
    @memo[0] = 0
    @memo[1] = 1
  end

  def [](v)
    @memo.size.upto(v) do |x|
      @memo << @memo[x-1] + @memo[x-2]
    end
    return @memo[v]
  end

end

def main
  count = (ARGV.last || 31).to_i

  fibonacci = Fibonacci.new
  count.times do |x|
    val = fibonacci[x]
    puts "#{x}: #{val}"
  end
end

main
