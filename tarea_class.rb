# Esta es la forma como se definen
# clases en Ruby
class TareaClass
  def self.print_even
    contador = 0
    a = Array (0..100)
    for i in a do
      if i % 2 == 0
        contador += 1
      end
    end
    puts "Hay #{contador} números pares de 0 a 100"
  end

  def self.print_prime
    count = 0
    b = Array (1..100)
    for i in b do
      cont_op = 0
      for j in 1..i do
        if i % j == 0
          cont_op += 1
        end
      end
      if cont_op == 2
        count += 1
      end
    end
    puts "Hay #{count} números primos de 0 a 100"
  end

  def self.validate_name (name)
    a = name.chars # => [‘M’, ‘a’, ‘r’, ‘í’, ‘a’]
    name.scan(/\w/) # => [‘M’, ‘a’, ‘r’, ‘a’] (/\w/ es una expresión regular para letras)
    match = /[A-Z]/.match(name)  # => <MatchData "M">
    match.to_s # => “M”
    if a[0] == match.to_s
      puts "#{name} es un formato válido"
    else
      puts "#{name} no está permitido"
    end
  end
end
