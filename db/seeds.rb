# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create!(email:"p@p.com", password:"password")
user.id = 1
user.save!

Investment.create(title: "Fake title!", industry: 'Solar', description: 'Funding solar panel research', contact_email: 'fakeemail@email.com', ngo: 'Fake Corporation Name', user_id:"1")
Investment.create(title: "Another fake Title!", industry: 'Marine Conservation', description: 'Funding marine conservation initiatives', ngo: 'Fake Corporation Name 2', user_id:"1")
Investment.create(title: "SuperFakeTitle", industry: 'Marine Conservation', description: 'Funding marine conservation initiatives. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', ngo: 'Fake Corporation Name 2', user_id:"1")
Investment.create(title: "Initiative to lessen carbon footprint", industry: 'Marine Conservation', description: 'More fake description. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', ngo: 'Fake Corporation Name 2', user_id:"1")

Research.create(topic: 'Solar Panels', description: 'Research into making solar panels more efficient. Blahb lah blah blah blah blah', user_id:"1")
