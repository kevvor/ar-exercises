require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...


burnaby = Store.create do |b|
  b.name = "Burnaby"
  b.annual_revenue = 300000
  b.mens_apparel = true
  b.womens_apparel = true
end

richmond = Store.create do |r|
  r.name = "Richmond"
  r.annual_revenue = 1260000
  r.mens_apparel = false
  r.womens_apparel = true
end

gastown = Store.create do |g|
  g.name = "Gastown"
  g.annual_revenue = 190000
  g.mens_apparel = true
  g.womens_apparel = false
end

Store.count






