puts "Deleting old data..."
User.destroy_all

puts 
puts "Seeding Users..."

User.create(username: 'testuser', password: 'testpassword')
User.create(username: 'testuser2', password: 'testpassword2')
User.create(username: 'testuser3', password: 'testpassword3')

puts "Done seeding..."