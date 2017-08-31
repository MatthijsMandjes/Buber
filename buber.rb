require_relative "Passenger.rb"
require_relative "SpaceTaxi.rb"

class Buber

  attr_accessor :taxies

  def initialize
    @taxies = []
    @taxies << SpaceTaxi.new(1, "available")
    @taxies << SpaceTaxi.new(2, "unavailable")
    @taxies << SpaceTaxi.new(3, "available")
    @taxies << SpaceTaxi.new(4, "unavailable")
    @taxies << SpaceTaxi.new(5, "unavailable")
    @taxies << SpaceTaxi.new(6, "available")
    @taxies << SpaceTaxi.new(7, "available")
    @taxies << SpaceTaxi.new(8, "unavailable")
    @taxies << SpaceTaxi.new(9, "available")
    @taxies << SpaceTaxi.new(10, "unavailable")
  end

  def list_taxies
    puts "Choose a space taxi. Here is a list: "
    @taxies.each do |taxie|
      puts "#{taxie.number}. #{taxie.availability}" if taxie.availability == "available"
    end
  end

  def make_choice
    number = gets.to_i
    @taxies.find { |taxi| taxi.number == taxi.number}
  end


end

buber = Buber.new

loop do

  puts "Enter your first name: "
  first_name = gets.chomp

  puts "Enter your last name: "
  last_name = gets.chomp

  puts "Enter your age: "
  age = gets.chomp

  passenger = Passenger.new(first_name, last_name, age)
  passenger.add_passenger(passenger)

  buber.list_taxies
  choice = buber.make_choice

  choice.availability = "unavailable"


end
