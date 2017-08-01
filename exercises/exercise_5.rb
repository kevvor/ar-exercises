require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@sum_annual_rev = Store.sum("annual_revenue")
@avg_annual_rev_per_store = @sum_annual_rev / Store.count

puts 'this is the total annual rev'
puts @sum_annual_rev

puts 'this is avg rev per store'
puts @avg_annual_rev_per_store

@num_stores_over_1_million = Store.where("annual_revenue > ?", 1000000).count

puts @num_stores_over_1_million