require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

surrey = Store.create do |s|
  s.name = "Surrey"
  s.annual_revenue = 224000
  s.mens_apparel = false
  s.womens_apparel = true
end

whistler = Store.create do |w|
  w.name = "Whistler"
  w.annual_revenue = 1900000
  w.mens_apparel = true
  w.womens_apparel = false
end

yaletown = Store.create do |y|
  y.name = "Yaletown"
  y.annual_revenue = 430000
  y.mens_apparel = true
  y.womens_apparel = true
end

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do |store|
  puts store[:name], store[:annual_revenue]
end

@womens_stores_under_1_million = Store
  .where(womens_apparel: true)
  .where("annual_revenue < ?", 1000000)

@womens_stores_under_1_million.each do |store|
  puts store[:name], store[:annual_revenue]
end















