# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file config/application.yml.
puts 'DEFAULT USER'
user = User.find_or_create_by_email :email => 'user@test.com', :password => 'changethispassword', :password_confirmation => 'changethispassword'
puts 'user: ' << user.email
user.save!
