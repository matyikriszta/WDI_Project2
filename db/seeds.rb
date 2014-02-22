# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

interests = ['Animal fancying', 'Amateur radio', 'Audiophilia', 'Baton twirling', 'Bboying', 'Blogging', 'Chainmail making', 'Coloring', 'Computer programming', 'Conlanging', 'Cooking', 'Cosplaying', 'Creative writing', 'Crocheting', 'Dance', 'Digital Arts', 'Drama', 'Drawing', 'Embroidery', 'Fantasy Sports', 'Fishkeeping', 'Foreign language learning', 'Gaming', 'Genealogy', 'Genetic genealogy', 'Herpetoculture', 'Home Movies', 'Homebrewing', 'Jewelry making', 'Juggling', 'Knapping', 'Knitting', 'K-pop', 'Lacemaking', 'Lapidary', 'Leather crafting', 'Lego Building', 'Locksport', 'Magic', 'Modeling', 'Model Building', 'Model Railroading', 'Origami', 'Painting', 'Ping Pong', 'Playing Musical Instrument', 'Pottery', 'Quilting', 'RC cars', 'Reading', 'Scrapbooking', 'Sculpting', 'Sewing', 'Singing', 'Soapmaking', 'Speedsolving', 'Taxidermy', 'Video Gaming', 'Wood carving', 'Woodworking', 'Worldbuilding', 'Writing', 'Yoga', 'Yo-yoing']
locations = ['Edinburgh, UK', 'Manchester, UK', 'Birmingham, UK', 'Glasgow, UK', 'Liverpool, UK', 'Bristol, UK', 'Oxford, UK', 'Cambridge, UK', 'Cardiff, UK', 'Brighton, UK', 'Newcastle-upon-Tyne, UK', 'Leeds, UK', 'York, UK', 'Inverness, UK', 'Bath, UK', 'Nottingham, UK', 'Reading, UK', 'Aberdeen, UK', 'Chester, UK']
genders = ['male', 'female']
preference = ['male', 'female', 'both']
50.times do
  User.create name: Faker::Name.name , email: Faker::Internet.email, password: 'password', location: locations.sample, gender: genders.sample, preference: preference.sample, dob: '1980-01-01', interest_list: interests.sample(5).join(', ')
end

