class Vendedor < Persona
  attr_accessor :productos, :dinero_ganado

  def intialize(nombre, email, direccion, productos)
    @productos = []
    @dinero_ganado = 0.0
  end
end
