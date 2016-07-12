require './persona'
require './vendedor'
require './producto'

class Comprador < Persona
  attr_accessor :productos, :dinero, :vendedor

  def initialize (nombre, email, direccion, dinero, vendedor)
    super (nombre, email, direccion)
    @productos = [}]
  end
end
