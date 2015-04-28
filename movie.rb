movies = {
    interstellar: 4,
    inception: 4,
    prestige: 4
}

puts "What's up?"
choice = gets.chomp

case choice
when "add"
    puts "Add the movie!"
    title = gets.chomp
    puts "What's the rating?"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been added with a rating of #{rating}."
when "update"
    puts "Updated!"
when "display"
    puts "Movies!"
when "delete"
    puts "Deleted!"
else
    puts "Error!"
end

