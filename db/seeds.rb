# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }"," { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke'"," movie: movies.first)

case Rails.env
when "development"
puts "__________BEGINNING______________"  

Plutus::Asset.create(:name => "Equipment")
Plutus::Asset.create(:name => "Cash")
Plutus::Revenue.create(:name => "Sales Revenue")
Plutus::Expense.create(:name=> "Cost Of Sales")
Plutus::Expense.create(:name=> "Admin Expenses")
Plutus::Liability.create(:name => "Creditors")
Plutus::Liability.create(:name => "Sales Tax Payable")

user1 = User.create(email: "admin@example.com", password: 'password')

payment_nodes = ['emergency fund', 'saving', 'utility', 'healthcare', 'Credit Cards and Debt','food & Groceries', 'personal care', 'entertainment', 'transportation']
reciepts_nodes= ['salary', 'business income', 'other income']
puts "succeeded 1"
reciepts = Category.create(name: 'reciepts')
puts "succeeded 2"
payments = Category.create(name: 'payments')

puts "succeeded 3"

reciepts_nodes.map do |c,parent|

	Category.create(name: c.humanize, parent: reciepts)

end

payment_nodes.map do |c,parent|

	Category.create(name: c.humanize, parent: payments)

end



when "production"
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

end


