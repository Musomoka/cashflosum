# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }"," { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke'"," movie: movies.first)






cats= ['income','emergency fund', 'saving', 'utility', 'healthcare', 'Credit Cards and Debt','food & Groceries', 'personal care', 'entertainment', 'transportation']



cats.each do |c|

	Category.create(name: c)

end
