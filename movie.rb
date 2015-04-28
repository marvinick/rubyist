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
    if movies[title.to_sym].nil?
        puts "What's the rating?"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "#{title} has been added."
    else
        puts "That movie is already there! The rating is #{movies[title.to_sym]}"
    end
when "update"
    puts "What's the title?"
    title = gets.chomp
    if movies[title.to_sym].nil?
    puts "The title does not exist!"
    else
        puts "set the new rating"
        rating = gets.chomp.to_i
        movies[title.to_sym] = rating
        puts "The new rating is #{movies[title.to_sym]}"
    end

when "display"
    movies.each do |title, rating| puts "#{title}: #{rating}"
end

when "delete"
    puts "Enter the title:"
    title = gets.chomp.to_sym
    if movies[title].nil?
        puts "There is no movie with that title!"
    else
        movies.delete(title)
    puts "It's been deleted"
    end

else
    puts "Error!"
end

