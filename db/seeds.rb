# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
current_user = User.first_or_create!(email: "testuser2@gmail.com", password: "123456", password_confirmation: "123456", username: "testuser", firstname: "test", lastname: "user",id: 1)
current_article = Article.create!({  user_id: current_user.id,title: "test1",body: "body-test",})

Article.destroy_all

Article.create!([{
  user_id: current_user.id,
  title: "test1",
  body: "body-test",
  
},
{
  user_id: current_user.id,
  title: "my second post",
  body: "this is my post",
  
},
{
  user_id: current_user.id,
  title: "test2",
  body: "testing seeding",
  }
])

p "Created #{Article.count} articles"


Comment.destroy_all

Comment.create!([{
  article: current_article,
  user_id: current_user.id,
  body: "body-test",
},
{
  article: current_article,
  user_id: current_user.id,
  body: "this is my post",
},
{
  article: current_article,
  user_id: current_user.id,
  body: "testing seeding",
}
])

p "Created #{Comment.count} comments"