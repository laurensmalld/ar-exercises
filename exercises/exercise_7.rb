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

prompt = '>'

puts "Specify a store location"
puts prompt
location = $stdin.gets.chomp

new_store = Store.create(name: location)

puts new_store.errors.full_messages