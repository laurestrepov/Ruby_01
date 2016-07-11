require './persona'
require './vendedor'
require './comprador'
class Producto
  def initialize (name, stock, price, sales_price)
    @name = name
    @stock = stock
    @price = price
    @sales_price = sales_price
  end

  def self.descontar_stock(name, qty)

  end
end
