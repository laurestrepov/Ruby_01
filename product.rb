class Product
  attr_accessor :name, :value
  @@stock = 200 #variable de instancia
  @@accum_vts = 0.0

  def self.stock
    @@stock
  end

  def self.accum_vts
    @@accum_vts
  end

  def initialize(name, value)
    @name = name #variable de clase
    @value = value
  end

  def sell(qty)
    return false if qty > @@stock
    @@accum_vts += (@value * qty)
    @@stock -= qty
    true
  end
end
