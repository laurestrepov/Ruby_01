require './lavable'
class Ropa
  include Lavable
  attr_accessor :tipo, :color

  def initialize(color, tipo)
    @color = color
    @tipo = tipo
    @sucio = false
  end

  def usar
    @sucio = true
  end
end
