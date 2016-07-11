require './persona'
class Vendedor < Persona
  attr_accessor :lista_producto

  def initialize(name, lname, id, phone)
    super(name, lname, id, phone)
    #@saled_products = saled_products
    @lista_producto = Array.new
  end

  def add_product(nombre, cant, precio, precio_venta)
    p_nuevo = Produto.new(nombre, cant, precio, precio_venta)
    @lista_producto.push(p_nuevo)
    @lista_producto
  end

  def ganado
  end

end
