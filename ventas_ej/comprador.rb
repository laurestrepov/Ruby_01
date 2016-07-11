require './persona'
class Comprador < Persona

  def initialize (name, lname, id, phone, tope_dinero)
    super(name, lname, id, phone)
    @tope_dinero = tope_dinero
  end

  def vendedor (element)
    @vendedor_propio= element
    puts "Su vendedor es: #{@vendedor_propio}"
    @vendedor_propio
  end

  def comprar (name, qty)
    Producto.descontar_stock(name,qty)
  end

  def comprados
  end

  def vendedor_asignado
    puts "Su vendedor es: #{@vendedor_propio}"
  end

  def gastado
  end

end
