require './lavable'
class Loza
  extend Lavable
  attr_accessor :tipo, :sucio

  def initialize(tipo)
    @tipo = tipo
    @sucio = false
  end

  def usar
    @sucio = true
  end
end
