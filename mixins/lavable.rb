# byebug == debugger
# Para usar byebug debe instalar
# la gema 'gem install byebug'
#require 'byebug'
module Lavable
  def lavar
    if @sucio
      if is_a?(Ropa)
        puts 'Lavando Ropa...'
      elsif is_a?(Loza)
        puts 'Lavando Loza'
      end
      @sucio = false
    end
    @sucio
  end

  def self.verificar
    puts "#{self.class} está sucia" if @sucio
  end
end
