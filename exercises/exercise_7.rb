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
user_input = gets.chomp
store = Store.create(name: user_input ,annual_revenue: 1, mens_apparel: false, womens_apparel: false)

puts store.errors.full_messages

