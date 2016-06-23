# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name:  "Bill Gates",
             email: "billg@gmail.com",
             password:              "password",
             password_confirmation: "password",
             description: "I have all the money")

User.create!(name:  "Gene Demby",
             email: "gened@gmail.com",
             password:              "password",
             password_confirmation: "password",
             description: "I talk about race and politics")

User.create!(name:  "Your Mom",
             email: "yourmom@gmail.com",
             password:              "password",
             password_confirmation: "password",
             description: "things and stuff")

User.create!(name:  "Rick and Morty",
             email: "rickandmorty@gmail.com",
             password:              "password",
             password_confirmation: "password",
             description: "need a longer description")