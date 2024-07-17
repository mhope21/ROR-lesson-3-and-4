class Sum1
    attr_accessor :total
    def initialize(x,y)
        @total = x + y

    end
end

class Sum2
    def initialize(a,b)
        @a = a 
        @b = b

    end
    def new_total
        @a + @b
    end
end

sum_one = Sum1.new(5,6)
sum_two = Sum2.new(5,6)

puts sum_one.total
puts sum_two.new_total