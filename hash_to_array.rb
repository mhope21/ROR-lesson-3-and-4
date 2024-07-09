def get_user_hash   # get 5 keys and 5 values from user
    user_hash = {}
    5.times do
        puts "Give me a key for your hash: "
        key = gets.chomp()
        puts "Give me a value for #{key}: "
        user_hash[key] = gets.chomp()
    end
    return user_hash
end


def hash_to_array(hash) # display a key array and a value array from hash
    keys = hash.keys
    values = hash.values
    puts "Keys: #{keys}"
    puts "Values: #{values}"
end

hash_to_array(get_user_hash)