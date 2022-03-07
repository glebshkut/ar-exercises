require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Sdasd", last_name: "sda", hourly_rate: 60)
@store1.employees.create(first_name: "Ninja_Tut", last_name: "Did", hourly_rate: 188)
@store2.employees.create(first_name: "Ninja-Ka", last_name: "Did-Kalan", hourly_rate: 49)
@store2.employees.create(first_name: "Ninja-Hi", last_name: "Did-Yuo", hourly_rate: 54)
pp Employee.all