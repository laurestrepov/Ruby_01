class NominaClass
  def self.es_integral?(salary)
    minimo = 689455.00
    base = minimo * 10
    prestacion = minimo * 3
    salario_integral = base + prestacion
    if salary.to_f >= salario_integral
      return true
    else
      return false
    end
  end


end
