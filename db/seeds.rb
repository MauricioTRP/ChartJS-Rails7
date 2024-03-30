# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

25.times do
  Article.create(
    article_type: Faker::Cannabis.type,
    medical_use: Faker::Cannabis.medical_use,
    classification: "#{Faker::Cannabis.type}",
    strain:  Faker::Cannabis.strain,
    category: Faker::Cannabis.category,
    brand: Faker::Cannabis.brand
  )
end

100.times do
  Venta.create(
    date: Faker::Date.between(from: '2023-09-23', to: '2024-03-25'),
    article: Article.all.sample,
    sale_price: rand(1700..20200)
  )
end