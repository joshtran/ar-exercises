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

class Store < ActiveRecord::Base
  validates :name, length: { minimum: 3}
   validates_numericality_of :annual_revenue, only_integer: true
   validates_numericality_of :annual_revenue,greater_than_or_equal_to: 0
end

class Employee < ActiveRecord::Base
  validates :first_name, :last_name, :store_id, presence: true
  validates_numericality_of :hourly_rate, only_integer: true
  validates_numericality_of :hourly_rate,greater_than: 39
  validates_numericality_of :hourly_rate,less_than: 201
end


puts "Please provide a store name."
@new_store_name = gets.chomp
@new_store = Store.create(name: @new_store_name)
puts @new_store.errors.full_messages


