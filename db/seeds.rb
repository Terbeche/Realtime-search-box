# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
Article.destroy_all
Search.destroy_all

@user = User.create(name:"user1", email:"user1@gmail.com", password:"123456", password_confirmation:"123456")
p "Created #{User.count} users"

@first_article = Article.create(title: "First Article", content: "This is the first article", user_id: @user.id)
@second_article = Article.create(title: "Second Article", content: "This is the second article", user_id: @user.id)
@third_article = Article.create(title: "third Article", content: "This is the third article", user_id: @user.id)
@fourth_article = Article.create(title: "fourth Article", content: "This is the fourth article", user_id: @user.id)
@fifth_article = Article.create(title: "fifth Article", content: "This is the fifth article", user_id: @user.id)
p "Created #{Article.count} articles"
