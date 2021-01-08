# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

react = Category.create(name:"React")
rails = Category.create(name:"Rails")
javascript = Category.create(name:"JavaScript")
ruby = Category.create(name:"Ruby")

react.cards.create(question: "Is React?", answer: "Yes", points: 100)
react.cards.create(question: "Does React?", answer: "No", points: 100)
react.cards.create(question: "Why?", answer: "Because...", points: 100)

rails.cards.create(question: "Is Rails?", answer: "Yes", points: 100)
rails.cards.create(question: "Does Rails?", answer: "No", points: 100)
rails.cards.create(question: "Why?", answer: "Because...", points: 100)

javascript.cards.create(question: "Is JavaScript?", answer: "Yes", points: 100)
javascript.cards.create(question: "Does JavaScript?", answer: "No", points: 100)
javascript.cards.create(question: "Why?", answer: "Because...", points: 100)

ruby.cards.create(question: "Is Ruby?", answer: "Yes", points: 100)
ruby.cards.create(question: "Does Ruby?", answer: "No", points: 100)
ruby.cards.create(question: "Why?", answer: "Because...", points: 100)
