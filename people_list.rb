class PeopleList
  def self.generate
    personas = Hash.new
    personas['1'] = Hash.new
    personas['1']['nombre'] = 'Luis'
    personas['1']['apellido'] = 'Gómez'
    personas['1']['cedula'] = '123456780'
    a=Hash.new
    a['nombre'] = 'Ana'
    a['apellido'] = 'Rosales'
    a['cedula'] = '1234567890'
    b=Hash.new
    b['nombre'] = 'Lucia'
    b['apellido'] = 'Rodriguez'
    b['cedula'] = '1234567890'
    personas['1']['beneficiarios'] = [a,b]

    personas['2'] = Hash.new
    personas['2']['nombre'] = 'Jaime'
    personas['2']['apellido'] = 'Roldan'
    personas['2']['cedula'] = '70119997'
    c=Hash.new
    c['nombre'] = 'Laura'
    c['apellido'] = 'Marin'
    c['cedula'] = '1036538771'
    d=Hash.new
    d['nombre'] = 'James'
    d['apellido'] = 'Chansoy'
    d['cedula'] = '13453245'
    personas['2']['beneficiarios'] = [c,d]

    personas['3'] = Hash.new
    personas['3']['nombre'] = 'Marcos'
    personas['3']['apellido'] = 'Suarez'
    personas['3']['cedula'] = '18374658'
    f=Hash.new
    f['nombre'] = 'Mario'
    f['apellido'] = 'Benedetti'
    f['cedula'] = '1231231'
    g=Hash.new
    g['nombre'] = 'Jorge'
    g['apellido'] = 'Marona'
    g['cedula'] = '1234567890'
    personas['3']['beneficiarios'] = [f,g]

    personas
  end

  def self.number_of_letter(letter)
    @alphabet_hash[letter] if letter.is_a?(String)
  end
end
