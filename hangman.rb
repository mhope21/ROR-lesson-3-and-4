module Hangman
    def self.decomp_word(word)
        word.chars       # makes an array of the characters in the word
    end
    def self.see_guesses(word, array)
        # function takes the word and array of correct guesses, returns the letters in their appropriate location in the word
        # if a character in the word is not found in array, it is replaced with an underscore
        word_so_far = []
        word.each_char do |char|
            if array.include?(char)
                word_so_far << char
            else
                word_so_far << '_'
            end
        end
        so_far = word_so_far.join
        return so_far
    end

end
    
class HangmanGame
    def self.play_hangman
        words = ["apple", "banana", "cherry", "date", "elderberry", "fig", "grape", "honeydew", "kiwi", "lemon", "watermelon", "orange", "mango"]
        loop do
            # game loop, makes empty arrays for guesses and chooses word from array
            right_guesses = []
            wrong_guesses = []
            word = words[rand(0..words.length)]
            chars_to_find = Hangman.decomp_word(word)   # character array to compare guesses
            
            count = 0
            puts "This is a #{chars_to_find.length} letter word."
            loop do
                current_word = Hangman.see_guesses(word, right_guesses) # Shows the correct guesses in the word
                puts "So far you have: #{current_word}"
                puts "Correct guesses so far:  #{right_guesses}"
                puts "Wrong guesses: #{wrong_guesses}, #{count}"
                if count != 6
                    
                    puts "Type a letter to see if it is in the word: "
                    letter = gets.chomp()
                    if chars_to_find.include?(letter)
                        if !right_guesses.include?(letter)
                            puts "Good guess"
                            right_guesses << letter # adds correct guesses to the right array
                        else
                            puts "You have already guessed this letter"
                        end
                    elsif !wrong_guesses.include?(letter)
                        wrong_guesses << letter  # add wrong guesses to the array and increments count
                        count += 1
                        puts "That guess was incorrect."
                        if count == 1   # draws the hangman
                            puts "  O"
                        elsif count == 2
                            puts "  O"
                            puts "  |"
                        elsif count == 3
                            puts "  O"
                            puts "--|"
                        
                        elsif count == 4
                            puts "  O"
                            puts "--|--"
    
                        elsif count == 5
                            puts "  O"
                            puts "--|--"
                            puts "  ="
                            puts " |"
                        else
                            puts "  O"
                            puts "--|--"
                            puts "  ="
                            puts " | |"

                        end
                    elsif wrong_guesses.include?(letter)
                        puts "You have already guessed this letter."
                    end
                end
                if (chars_to_find - right_guesses).empty?   # determines if the word has been guessed
                    puts "You are correct. #{word.capitalize} is the word."
                    break
                elsif count == 6    # or if the player has lost the game
                    puts "You lost. The word was #{word.capitalize}."
                    break
                end
            end
            puts "Do you want to play again? (yes/no)"
            answer = gets.chomp.downcase
            break unless answer == 'yes'    # breaks the loop if player chooses not to play again
        end

    end
end

HangmanGame.play_hangman
        