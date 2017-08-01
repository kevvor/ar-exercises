require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "type new store name and press ENTER"
print "> "

store_name = gets.chomp

@user_store = Store.new(name: store_name)

@user_store.save

@user_store.errors.messages.each do |e|
  pp e
end
