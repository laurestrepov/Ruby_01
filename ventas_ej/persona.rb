#require './producto'
#require './vendedor'
#require './comprador'
class Persona
  attr_accessor :name, :lname, :id, :phone
  def initialize (name, lname, id, phone)
    @name = name
    @lname = lname
    @id = id
    @phone = phone
  end


  def run
    puts "the #{self.class} is running."
  end

  def eat
    puts "the animal is eating."
  end

  def sleep
    puts "the #{self.class is sleeping}."
  end

  def reproduce
    puts "the animal is reproducing."
  end
end
