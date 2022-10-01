class Fibonacci < ApplicationRecord
   prepend MemoWise
   
   def slow_value(n)
       return n if n <= 1
         slow_value(n - 1) + slow_value(n - 2)
   end 
   memo_wise :slow_value

   private

   def private_slow_value(n)
        @private_slow_value ||= {}
        @private_slow_value[n] ||= begin
            return n if n <= 1
        else 
            private_slow_value(n - 1) + private_slow_value(n - 2)
   end
    memo_wise :private_slow_value
end
