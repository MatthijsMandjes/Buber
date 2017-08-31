class Passenger
  attr_accessor :first_name, :last_name, :age

  def initialize(first_name, last_name, age, passengers = [])
    @first_name = first_name
    @last_name = last_name
    @age = age
    @passengers = passengers
  end

  def add_passenger(passenger)
    @passengers << passenger
  end

end
