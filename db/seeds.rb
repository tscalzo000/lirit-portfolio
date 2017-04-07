# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "test@test.com", password: "password")

Category.create(name: "Production")
Category.create(name: "Construction")
Category.create(name: "Rendering")
Category.create(name: "DrawingAndPainting")

Resume.create(user_id: 1, url: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/Resume.pdf/page1-1200px-Resume.pdf.jpg")

Bio.create(user_id: 1, text: "Your text here")
