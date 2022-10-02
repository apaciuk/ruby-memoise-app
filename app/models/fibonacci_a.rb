# frozen_string_literal: true

class FibonacciA < ApplicationRecord
      def self.calculate(n)
         puts "Calculating #{n}th Fibonacci number"
         if n < 2
            n
         else
            calculate(n-1) + calculate(n-2)
         end
end

puts FibonacciA.calculate(4)
