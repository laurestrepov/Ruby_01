# Esta es la forma como se definen
# clases en Ruby
class Operate

  # Esta es la forma como se declara
  # un método o función en Ruby
  # por estándar se usa nombre_metodo
  def self.sum(a,b)
   c = a+b
   puts "El resultado de #{a}+#{b} es #{c}"
  end

  def self.substract(c,d)
    e = c-d
    puts "El resultado de #{c}-#{d} es #{e}"
  end

  def self.div(a,b)
    m = a.to_f
    n = b.to_f
    o= m/n
    puts "El resultado de #{m}/#{n} es #{o}"
  end

  def self.mult(c,d)
    e = c*d
    puts "El resultado de #{c}*#{d} es #{e}"
  end
end
