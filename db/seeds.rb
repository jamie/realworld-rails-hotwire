# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create users
eric = User.find_or_create_by!(username: "Eric Simons", email: "eric@example.com") do |user|
  user.password = "password123"
end

albert = User.find_or_create_by!(username: "Albert Pai", email: "albert@example.com") do |user|
  user.password = "password123"
end

# Create posts
Post.find_or_create_by!(title: "How to build webapps that scale", user: eric) do |post|
  post.body = "This is the description for the post."
end

Post.find_or_create_by!(title: "The song you won't ever stop singing. No matter how hard you try.", user: albert) do |post|
  post.body = "This is the description for the post."
end
