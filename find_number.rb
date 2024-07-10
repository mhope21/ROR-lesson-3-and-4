def number_game
    loop do # Outer loop to restart game
        secret_number = rand(1..100)
        count = 1  # For counting how many guesses until a correct answer, starts at one, first guess always necessary

        loop do # Inner loop for number guessing logic
            puts "Enter a number 1 to 100:  "
            num = gets.chomp()
            if num.match?(/^\d+$/) # Check if the input is a valid number (contains only digits)
                num = num.to_i
                if num == secret_number
                    puts "That is correct. #{secret_number} is the secret number!"
                    puts "It took you #{count} tries."
                    break

                elsif num > secret_number
                    puts "You are too high."
                    count += 1
                else
                    puts "You are too low."
                    count += 1
                end

            else
            
                puts "Please enter a valid number."
            end
        end

    puts "Do you want to play again? (y/n)"
    answer = gets.chomp.downcase

    break unless answer == 'y'
    end
    puts "Thanks for playing."
end

number_game