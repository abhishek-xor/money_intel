# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

if InvestmentType.first.blank?
	InvestmentType.create([{ name: "Maximizing gains" }, { name: "Minimizing losses" }, { name: "Both qually" }])
end

if InvestmentChoice.first.blank?
	InvestmentChoice.create([{ name: "Sell all your investment" }, { name: "Sell some of your investment" }, 
		{ name: "Keep all of your investments" }, { name: "Buy more investments" }])
end


