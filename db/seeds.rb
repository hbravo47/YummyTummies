# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
	
Meal.delete_all
Meal.create!(
	name: 'French Ham & Cheese Sandwich',
	calories: 250,
	premium: false,
	pic: open('app/assets/images/pastas.jpg'),
	fid: 1,
	mealID: 22,
	)
Meal.create!(
	name: 'Turkey, Smashed Peas, & Pesto Sandwich',
	calories: 250,
	premium: false,
	pic: open('app/assets/images/salads.jpg'),
	fid: 1,
	 mealID: 2,
	)
Meal.create!(
	name: 'Roast Beef with Roasted Tomato Sandwich',
	calories: 250,
	premium: true,
	pic: open('app/assets/images/beefwrap.jpg'),
	fid: 1,
	 mealID: 44,
	)
Meal.create!(
  name: 'Green Leaf, Chorizo, & Apple Salad',
  calories: 250,
  premium: false,
  pic: open('app/assets/images/pastas.jpg'),
  fid: 1,
  mealID: 242,
  )
Meal.create!(
  name: 'Romaine & Pickled Vegetable Salad',
  calories: 250,
  premium: false,
  pic: open('app/assets/images/salads.jpg'),
  fid: 1,
   mealID: 288,
  )
Meal.create!(
  name: 'Arugula, Peach, & Cheddar Salad',
  calories: 250,
  premium: true,
  pic: open('app/assets/images/beefwrap.jpg'),
  fid: 1,
   mealID: 484,
  )

Meal.create!(
  name: 'Classic Spaggetti',
  calories: 250,
  premium: false,
  pic: open('app/assets/images/salads.jpg'),
  fid: 1,
   mealID: 778,
  )
Meal.create!(
  name: 'Farfalle with Cream Sauce',
  calories: 250,
  premium: true,
  pic: open('app/assets/images/beefwrap.jpg'),
  fid: 1,
   mealID: 89,
  )


User.delete_all
User.create!(
	name: "Zaxbys",
  	email: "zaxby@gmail.com",
  	password: 'darnell35',
  	address: "1500 Augustine Drive, Valdosta, GA 31601",
  	typeacct: 3,
  	fid: 1,
  	premium: true,
)
User.create!(
	name: "Zacadoos",
  	email: "zac@gmail.com",
  	password: 'darnell35',
  	address: "1500 Baytree Drive, Valdosta, GA 31601",
  	typeacct: 3,
  	fid: 2,
  	premium: true,
)
User.create!(
	name: "SlapDaddies",
  	email: "slap@gmail.com",
  	password: 'darnell35',
  	address: "1200 Baytree Drive, Valdosta, GA 31601",
  	typeacct: 3,
  	fid: 3,
  	premium: true,
)

User.create!(
	name: "Valdosta Middle",
  	email: "vmiddle@gmail.com",
  	password: 'darnell35', 
  	address: "1500 Gronto Drive, Valdosta, GA 31601",
  	typeacct: 2,
  	premium: true,
)
User.create!(
	name: "Valdosta High",
  	email: "vhigh@gmail.com",
  	password: 'darnell35', 
  	address: "1200 Augustine Drive, Valdosta, GA 31601",
  	typeacct: 2,
  	premium: true,
)
User.create!(
	name: "Lowndes High",
  	email: "lhigh@gmail.com",
  	password: 'darnell35', 
  	address: "1500 Augustine Drive, Valdosta, GA 31601",
  	typeacct: 2,
  	premium: true,
)






















