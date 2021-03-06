# Esta es la forma como se definen
# clases en Ruby
class InitialClass

  # Esta es la forma como se declara
  # un método o función en Ruby
  # por estándar se usa nombre_metodo
  def self.say_hello
    puts 'Hi There !'
  end

  def self.what_im_i(element)
    # Note el uso de comilla doble
    # para hacer interpolación
    puts "#{element} a #{element.class}!"
    # Note el uso de return para
    # devolver un valor desde el
    # método
    return element.class
  end

  # Cuando un método devuelve true o
  # false, por convención se llama
  # nombre_metodo?
  def self.im_i_a_number?(element)
    # No es necesario usar return
    # si deseo retornar un valor.
    element.is_a?(Fixnum)
  end

  def self.im_i_a_string?(element)
    element.is_a?(String)
  end
end
