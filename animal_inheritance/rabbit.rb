require './animal' #clase padre
class Rabbit < Animal
  def roar
    puts "Squeak..!!"
  end

  def eat
    puts "the #{self.class} is eating a vegetable."
  end

  def reproduce(female_rabbit)
    if female_rabbit.is_a?(Rabbit)
      puts "Having fun and overpopulating earth with rabbits !"
    else
      puts "I'm i drunk ? #{female_rabbit.class}"
    end
  end
end
