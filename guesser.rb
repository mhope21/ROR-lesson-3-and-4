def guesser
    loop do # Outer loop to restart game
        puts "Think of a number between 1 and 100"
        puts "I will guess. If I am too high, type H; if I am too low, type L."
        puts "If I am correct, type Y."

        low_num = 1
        high_num = 100
        guesses = []    # Array to hold guesses
        
        loop do # Inner loop with guessing logic
            guess = (high_num + low_num)/2  # Chooses a number in the middle of the current range

            if guesses.include?(guess)  # Checks if a guess is repeated to determine if player is lying
                puts "You have deceived me; please be truthful next time."
                puts "These are my guesses :  #{guesses}. I know one of them is correct."
                break
            end
            
            guesses << guess    # Adds guess to guesses array

            puts "Is the number #{guess}?"
            response = gets.chomp.upcase

            # Gets responses from player to determine next guess
            if response == 'H'
                high_num = guess - 1
            elsif response == 'L'
                low_num = guess + 1
            elsif response == 'Y'
                puts "I knew I had it."
                break
            else
                "Please enter the appropriate response."
            end

        end
        
        puts "Do you want to play again? (yes/no)"
        answer = gets.chomp.downcase
        break unless answer == 'yes'
    end
    puts "Thanks for playing!"
end
guesser