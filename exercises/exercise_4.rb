require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)


@mens_stores = Store.where(mens_apparel: true)

men = @mens_stores.each do |m|
  m.name
  m.annual_revenue
end

puts men.count

@wm_undmil = Store.where(womens_apparel: true).where("annual_revenue < ?", 1000000)

women = @wm_undmil.each do |w|
  w.name
  w.annual_revenue
end

puts women.count