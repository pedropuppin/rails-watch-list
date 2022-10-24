# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Destroying movies...'
Movie.destroy_all

puts 'Creating movies...'
10.times do
  Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: 'https://source.unsplash.com/random/1600x900/?movie-poster',
    rating: rand(0..10)
  )
end

puts "Success!"


# https://api.themoviedb.org/3/movie/{movie_id}?api_key=<<52409615a4c2eb0bbf7a5bd174da1245>>&language=en-US
