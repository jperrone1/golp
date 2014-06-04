# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Thing.find_or_create_by(name: "Buy a kayak.", description: "Get a larger one than the one I have now.")

Thing.find_or_create_by(name: "Weed the side steps.", description: "Do it while the soil is still soft.")

Thing.find_or_create_by(name: "Read the problem book.", description: "Go through the coding interview problems and learn how to do them.")

Thing.find_or_create_by(name: "Cut down on salt.", description: "Put away my salt shaker and buy Open Nature chickens.")

myArray = ["flexitarian", "tattooed", "occupy", "meggings", "fingerstache", "wayfarers", "Neutra", "banjo", "fixie", "chambray", "four", "loko", "small batch", "literally", "vegan", "messenger bag", "ethical", "authentic", "Blue Bottle", "Kickstarter", "fap", "before they sold out", "single-origin", "coffee", "mlkshk", "irony", "slow-carb", "umami", "selvage", "farm-to-table", "locavore", "gluten-free", "flannel", "narwhal", "Kickstarter", "sustainable", "mlkshk", "keffiyeh", "keytar", "raw denim", "Godard", "fanny pack", "literally", "put a bird on it", "pickled", "chambray", "irony" "tattooed", "hoodie", "PBR mixtape", "put a bird on it", "McSweeney's", "hella", "mlkshk", "hashtag", "quinoa", "blog", "vinyl", "8-bit", "bitters", "disrupt", "biodiesel", "Shoreditch", "seitan", "YOLO", "blog"]

if (Thing.all.count < 200)
  200.times do 
    Thing.create(name: myArray.sample, description: Forgery(:lorem_ipsum).words(30, :random => true))
  end
end