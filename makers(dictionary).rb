
dictionary = {
    'bear' => 'a creature that fishes in the river for salmon.',
    'river '=> 'a body of water that contains salmon, and sometimes bears.',
    'salmon' => 'a fish, sometimes in a river, sometimes in a bear, and sometimes in both.'
}

puts 'Hello , what would you like to search'
user_input = gets.chomp

serch_result = dictionary[user_input]

if serch_result
    puts "The search result for #{user_input} is : #{ serch_result }"
else  
    puts "sorry that wasn't in my dictionary"
end
