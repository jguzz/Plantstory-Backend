# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Plant.destroy_all
Post.destroy_all
Photo.destroy_all
Comment.destroy_all
Follow.destroy_all

joey = User.create(username: "joeyG", name:"joey", password_digest: "123", bio: "plant-lover from queens!", profile_picture: "https://vignette.wikia.nocookie.net/rare/images/2/25/Smash_ultimate_banjo.jpg/revision/latest?cb=20190612041147")
jake = User.create(username: "jakeP", name: "jake", password_digest: "123", bio: "newbie plant lover", profile_picture: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fi.pinimg.com%2Foriginals%2F5c%2F2e%2F90%2F5c2e90686ecc230c903db6e8d2a2fb5e.jpg&imgrefurl=https%3A%2F%2Fwww.pinterest.co.uk%2Fpin%2F767160117753837436%2F&tbnid=1AZN0w2MJyayfM&vet=12ahUKEwimtor5sZPpAhXVheAKHXZXA9IQMygJegUIARCmAg..i&docid=UwDvz2I8KpX1ZM&w=1790&h=2048&q=ranma%201%2F2&hl=en&ved=2ahUKEwimtor5sZPpAhXVheAKHXZXA9IQMygJegUIARCmAg")

plant1 = Plant.create(common_name: "snake plant", latin_name: "sansaveria")
plant2 = Plant.create(common_name: "swiss-cheese plant", latin_name: "monstera")

post1 = Post.create(likes: 0, user_id: joey.id, plant_id: plant1.id, comment_id: nil)
post2 = Post.create(likes: 2, user_id: jake.id, plant_id: plant2.id, comment_id: nil)

photo1 = Photo.create(img: "https://www.burpee.com/dw/image/v2/ABAQ_PRD/on/demandware.static/-/Sites-masterCatalog_Burpee/default/dw4299e75a/Images/Product%20Images/prod500591/prod500591.jpg?sw=322&sh=380&sm=fit", post_id: post1.id)
photo2 = Photo.create(img: "https://i.pinimg.com/originals/e6/98/b8/e698b81ad2f7f12f32b69d726a853263.jpg", post_id: post2.id )
