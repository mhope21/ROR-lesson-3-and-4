
def chuck_knowledge
    require 'faker'
    loop do
        puts "Would you like to know a Chuck Norris fact? (yes/no)"
        answer = gets.chomp.downcase
        break unless answer == "yes"
        puts Faker::ChuckNorris.fact
    end
end    

chuck_knowledge