require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@total_revenue = Store.sum(:annual_revenue);
pp @total_revenue
@average_revenue = Store.average(:annual_revenue);
pp @average_revenue
@result = Store.where(annual_revenue: 1000000..Float::INFINITY).count
puts @result