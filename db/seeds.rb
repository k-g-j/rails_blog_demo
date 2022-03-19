# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(email: 'kate@example.com', name: 'Kate', password: 'password', password_confirmation: 'password',
            role: User.roles[:admin])
User.create(email: 'john@doe.com', name: 'John', password: 'password', password_confirmation: 'password')

10.times do |x|
  post = Post.create(
    title: "Title #{x}",
    body: "This is post #{x}. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    user_id: User.first.id
  )

  5.times do |y|
    Comment.create(
      body: "Comment #{y}",
      user_id: User.second.id,
      post_id: post.id
    )
  end
end
