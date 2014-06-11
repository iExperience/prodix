# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

emails = %w(rafi@iexperience.co.za salman@iexperience.co.za lyles@swift.com)
# => ["a", "b", "c"]

emails.each do |email|
  User.create(email: email,
    first_name: email.split("@")[0],
    password: 'oncerocks',
    password_confirmation: 'oncerocks')
end

names = %w(Khaos Simba Fizzcan HelloDoc Cream Aid Vladmir)

names.each do |name|
  Project.create(name: name)
end
