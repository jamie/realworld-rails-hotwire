# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Article.create(
  title: "How to build webapps that scale",
  description: "This is the description for the post.",
  favorites_count: 29,
  body: "",
)
Article.create(
  title: "The song you won't ever stop singing. No matter how hard you try.",
  description: "This is the description for the post.",
  favorites_count: 32,
  body: "",
)
