class MyClass
  @@instancia = 'instancia'
  def self.my_method
    puts 'This is a class method'
  end
  def self.instancia_method
    puts "imprime variable de #{@@instancia}"
  end
end
