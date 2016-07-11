class Persona
  attr_accessor :nombre, :sexo
  @@poblacion = 6000000000
  def initialize (nombre, sexo)
    #aplica a instancias de la clase
    @@poblacion += 1
    @nombre = nombre
    @sexo = sexo
  end

  def self.morir#método de clase
    @@poblacion -= 1
    @nombre = ''#varialbe de clase
    @sexo = ''
  end
  def self.apocalipsis
    @@poblacion = 0
  end

  def poblacion #método de instacias
    @@poblacion #variable clase
  end
end
