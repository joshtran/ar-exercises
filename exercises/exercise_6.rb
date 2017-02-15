require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Joe", last_name: "Schmoe", hourly_rate: 30)
@store1.employees.create(first_name: "Jon", last_name: "Doe", hourly_rate: 20)

@store2.employees.create(first_name: "Jorge", last_name: "Borges", hourly_rate: 60)
@store2.employees.create(first_name: "Guillermo", last_name: "Lacombe", hourly_rate: 50)
@store2.employees.create(first_name: "Illy", last_name: "Vasquez", hourly_rate: 30)

# @store3.employees.create(first_name: "Jane", last_name: "Doe", hourly_rate: 60)
# @store3.employees.create(first_name: "Flo", last_name: "Snow", hourly_rate: 45)
# @store3.employees.create(first_name: "Sally", last_name: "Saloman", hourly_rate: 25)

