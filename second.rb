my_hash = {} # Create empty hash

# Add keys to hash and get user input for values
puts "What is your first name?"
my_hash[:first_name] = gets.chomp()

puts "What is your last name?"
my_hash[:last_name] = gets.chomp()

puts "How old are you?"
my_hash[:age] = gets.chomp()

puts "What is your street address?"
my_hash[:street_address] = gets.chomp()

puts "What city do you live in?"
my_hash[:city] = gets.chomp()

puts "What state do you live in?"
my_hash[:state] = gets.chomp()

puts my_hash    # Prints hash
puts "#{my_hash.keys}"  # Prints keys as an array of symbols?
puts my_hash.values # Prints values

# Capitalizes the first letter in each value
my_hash[:first_name] = my_hash[:first_name].capitalize
my_hash[:last_name] = my_hash[:last_name].capitalize
my_hash[:city] = my_hash[:city].capitalize

# Capitalizes the letters in the value
my_hash[:state] = my_hash[:state].upcase

puts my_hash