# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file config/application.yml.
puts 'DEFAULT USER'
user = User.find_or_create_by_email :email => ENV['EMAIL'].dup, :password => ENV['PASSWORD'].dup, :password_confirmation => ENV['PASSWORD'].dup
puts 'user: ' << user.email
user.save!
