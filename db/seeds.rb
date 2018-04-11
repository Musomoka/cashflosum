# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }"," { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke'"," movie: movies.first)



User.create(email: 'user@example.com', password: 'password')


payment_nodes= ['emergency fund', 'saving', 'utility', 'healthcare', 'Credit Cards and Debt','food & Groceries', 'personal care', 'entertainment', 'transportation']
reciepts_nodes= ['salary', 'business income', 'other income']

reciepts = Category.create(name: 'Reciepts')

payments = Category.create(name: 'payments')

reciepts_nodes.map do |c,parent|

	Category.create(name: c.humanize, parent: reciepts)

end

payment_nodes.map do |c,parent|

	Category.create(name: c.humanize, parent: payments)

end


