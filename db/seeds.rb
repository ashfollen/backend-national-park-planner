puts "Deleting old data..."
User.destroy_all

puts 
puts "Seeding Users..."

User.create(username: 'testuser', password_digest: 'testpassword')
User.create(username: 'testuser2', password_digest: 'testpassword2')
User.create(username: 'testuser3', password_digest: 'testpassword3')

puts "Done seeding..."