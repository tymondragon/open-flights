# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
airlines = Airline.create([
  {
    name: "United Airlines",
    image_url: "app/assets/images/United_Airlines_logo_PNG10.png"
  },
  {
    name: "Southwest",
    image_url: "app/assets/images/Southwest_Airlines-Logo-PNG6.png"
  },
  {
    name: "Delta",
    image_url: "app/assets/images/Delta_Airlines_Logo_PNG(3).png"
  },
  {
    name: "jetBlue",
    image_url: "app/assets/images/JetBlue_Airways_logo_PNG2.png"
  },
  {
    name: "American Airlines",
    image_url: "app/assets/images/American_Airlines_(5).png"
  },
])

reviews = Review.create([
  {
    title: "Meh, they were alright",
    description: "There was no ice for my beverage",
    score: 2,
    airline: airlines.first
  },
  {
    title: "One of the best!",
    description: "Wouldn't change a thing",
    score: 3,
    airline: airlines.first
  },
])