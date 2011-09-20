#!/usr/bin/env ruby

class Fibonacci

  def initialize
    @memo = {}
    @memo[0] = 0
    @memo[1] = 1
  end

  def [](v)
    return @memo[v] if @memo.include?(v)
    retval = self[v-1] + self[v-2]
    @memo[v] = retval
    return retval
  end

end

def main
  fibonacci = Fibonacci.new

  31.times do |x|
    val = fibonacci[x]
    puts "#{x}: #{val}"
  end
end

main
