# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

countries = [

    {
        name: 'America',
        age: 247,
        hobby: "Riding horses",
        image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixabay.com%2Fphotos%2Feagle-portrait-wild-bird-nature-2045655%2F&psig=AOvVaw3azmHJCkoS2FowtZsGKfKi&ust=1686089265040000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCPCyiZCSrf8CFQAAAAAdAAAAABAD"
    },
    {
        name: 'Italy',
        age: 172,
        hobby: "Eating pasta",
        image: "https://www.google.com/url?sa=i&url=http%3A%2F%2Fwww.reidsitaly.com%2Fdestinations%2Flazio%2Frome%2Fsights%2Fcolosseum.html&psig=AOvVaw3l6nzVs38TmgvCLjSPwgxB&ust=1686089399906000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCKDXhdGSrf8CFQAAAAAdAAAAABAD"
    },
    {
        name: 'England',
        age: 1096,
        hobby: "Drinking tea",
        image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fuceap.universityofcalifornia.edu%2Fstudy-abroad-in-united-kingdom-england&psig=AOvVaw03gVqanevGa8LVpDoRbkbZ&ust=1686089462447000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCMjLsYOTrf8CFQAAAAAdAAAAABAY"
    }

]

countries.each do |each_country|
    Country.create each_country
    puts "creating country #{each_country}"
end
