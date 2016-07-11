require 'date'
class Employee

  # Encapsulation is achieved when the instance variables are private
  # to an object and you have public getters and setters (in Ruby,
  # we call them attribute readers and attribute writers).
  # attr_accessor :name
  # For creating writer methods
  # attr_writer :name
  # For creating RW methods
  attr_accessor :name, :role, :salary, :hire_date, :quit_date
  #accessor: lectura/escritura

  def initialize(name, role, salary, hire_date, quit_date)
    @name = name
    @role = role
    @salary = salary
    @hire_date = hire_date
    @quit_date = quit_date
  end

  # Métodos públicos, accesible desde afuera
  # de la clase.
  def quit
    @quit_date = Date.today
  end

  def get_clean
    take_a_bath
    go_to_the_bathroom
    wash_mouth
  end

  # Métodos privados, solo accesibles
  # internamente desde la clase.
  def take_a_bath
    "I took a bath"
  end
  private :take_a_bath

  def go_to_the_bathroom
    puts "I went to the bathroom"
  end
  private :go_to_the_bathroom

  def wash_mouth
    "I washed my mouth and brushed my teeth"
  end
  private :go_to_the_bathroom
end
