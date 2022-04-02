# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
airlines = Airline.create([
  {
    name: "United Airlines",
    image_url: "https://ddzpublic.s3.us-west-2.amazonaws.com/United_Airlines_logo_PNG9.png"
  },
  {
    name: "Southwest",
    image_url: "https://ddzpublic.s3.us-west-2.amazonaws.com/Southwest_logo_PNG5.png"
  },
  {
    name: "Delta",
    image_url: "https://ddzpublic.s3.us-west-2.amazonaws.com/Delta_Air_Lines_logo_PNG15.png"
  },
  {
    name: "jetBlue",
    image_url: "https://ddzpublic.s3.us-west-2.amazonaws.com/JetBlue_Airways_logo_PNG2.png"
  },
  {
    name: "American Airlines",
    image_url: "https://ddzpublic.s3.us-west-2.amazonaws.com/American_Airlines_logo_PNG5.png"
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