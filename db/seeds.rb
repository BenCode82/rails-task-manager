# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'destroy all data'
Task.destroy_all
puts 'destroy done'

puts 'creating tasks'
Task.create!(title: "Menage",details: "nettoyez, balayer..." ,completed: false)
Task.create!(title: "Courses",details: "Burn the CB 🔥" ,completed: true)
Task.create!(title: "S'occuper de enfants",details: "On laisse pas bb dans le coin" ,completed: false)

puts 'tasks created'
