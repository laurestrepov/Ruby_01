require './animal' #clase padre
class Lion < Animal
  def roar
    puts "Arrrg..!!"
  end

  def eat(animal)
    puts "the #{self.class} is eating a(n) #{animal.class}."
  end

  def reproduce(female_lion)
    if female_lion.is_a?(Lion)
      puts "Having fun and repopulating earth with lions !"
    else
      puts "I'm i drunk ? #{female_lion.class}"
    end
  end
end
