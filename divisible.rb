# Which is better, and is there a better way to make it so that any numbers can be put in?

module DivBy
    def self.divby
      numarray = []  
      for i in 1..100 # Loops through all numbers 1 to 100
        if i % 2 == 0   # Checks if divisible by 2,3,or 5 and adds to array
            numarray << i
        elsif i % 3 == 0
            numarray << i
        elsif i % 5 == 0
            numarray << i
        end
        
      end
      return numarray   #returns the array of numbers
    end
end
  
class GetDivBy
    def self.print_divby   # function to print the array from the module
        print DivBy.divby
    end
end

GetDivBy.print_divby

module NewDivBy
    # Accepts array of integers and returns a hash containing an array of 
    # integers divisible by each element in the passed in array
    def self.divby(div_nums)   
        numhash = {}
        div_nums.each do |num|
            raise ArgumentError, "All inputs must be integers less than 100" unless num.is_a?(Integer) && num < 100
       
            next if numhash.key?(num)
            numhash[num] =[]
            for i in 1..100
                if i % num == 0
                    numhash[num] << i
                end    
            end
        
        end
        numhash
    end
end
  
class GetNewDivBy
    def self.print_divby(x,y,z)
        print NewDivBy.divby(x,y,z)
    end
end

GetNewDivBy.print_divby(2,3,5)  # valid arguments
GetNewDivBy.print_divby(9,4,6)
GetNewDivBy.print_divby(10,two,7)   # invalid arguments
GetNewDivBy.print_divby(101,3,5)
