# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Work.delete_all
User.delete_all
Item.delete_all
Category.delete_all

c = Category.create(name: "Category")
3.times do |j|
	i = c.items.build(item_size: (j*2)+1, description: "item #{j}",serial_number: j)
	u = User.new(name: "User #{j}")
	u.works.build(item: i, description: "Work #{i}")
	u.works.build(description: "Work without itam #{i}")
	i.save
	u.save
end