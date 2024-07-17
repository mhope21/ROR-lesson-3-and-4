def do_calc(a, b)
    puts yield(a,b) if block_given? 
 end 
 
 do_calc(7,9){|a, b| a + b}
 do_calc(7,9){|a, b| a * b}