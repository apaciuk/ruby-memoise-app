# frozen_string_literal: true

class FibonacciB < ApplicationRecord
    def self.calculate(n)
        @calculate ||= {}
        @calculate[n] ||= begin
            puts "Calculating #{n}th Fibonacci number" 
            if n == 0 || n == 1
            n
        else
            calculate(n-1) + calculate(n-2)
        end
    end 
end 
end

puts FibonacciB.calculate(4)
puts FibonacciB.calculate(40)
