class EjRenta

  def initialize()
    @users = Hash.new
    @declarantes=Hash.new
    menu_ppal
  end

  def menu_ppal
    puts "## Menú Principal ## "
    puts "Seleccione una opción:"
    puts "1) Usuarios"
    puts "2) Salir"
    @main_opt = gets.chomp.to_i
    if @main_opt == 1
      puts "## Menú Usuarios ##"
      puts "Seleccione una opción:"
      puts "1) Registrar Usuarios"
      puts "2) Listar Usuarios"
      puts "3) Eliminar Usuario"
      puts "4) Regresar a Menú Principal"
      @sec_opt = gets.chomp.to_i
      case @sec_opt
        when 1 then add_user
        when 2 then list_users
        when 3 then delete_user
        when 4 then menu_ppal
        else menu_ppal
      end
    else
      puts "Bye..."
      exit
    end
  end

  def add_user
    user = {}
    ingresos = []
    puts "Digite cédula del usuario: "
    user['cedula'] = gets.chomp
    puts "Digite el nombre del usuario: "
    user['nombre'] = gets.chomp
    puts "Digite el apellido del usuario: "
    user['apellido'] = gets.chomp
    puts "Registrar ingresos: "
    for i in 0..11
      puts "Digite salario correspondiente al mes #{i+1}"
      ingresos[i] = gets.chomp.to_f
    end
    user['salario'] = ingresos
    user['declara_renta'] = false
    @users[user['cedula']] = user
    puts "Usuario Registrado Exitosamente"
    puts "\n"
    menu_ppal
    @users
  end

  def delete_user
    puts "Digite la cédula del usuario: "
    cedula = gets.chomp
    @users.delete_if { |k, v| k == cedula }
    puts "Usuario Eliminado."
    menu_ppal
    @users
  end

  def list_users
    declarantes = {}
    if @users.size == 0
      puts "No hay usuarios registrados."
      menu_ppal
    end
    @users.each_with_index do |(key, user), idx|
      puts "User #{idx} :"
      puts "Cédula: #{key}"
      puts "Nombre: #{user['nombre']}"
      puts "Apellido: #{user['apellido']}"
      i_totales= user['salario'].inject {|sum, x| sum + x }
      puts "Ingresos totales: #{i_totales}"
      if i_totales > 127256
        user['declara_renta'] = true
        @declarantes[user['cedula']] = user
      end
      puts "Delara renta: #{user['declara_renta']}"
      puts "\n"
      @declarantes
    end
    puts "¿Cómo desea proceder? (seleccione una opción)"
    puts "1) Ver usuarios que declaran"
    puts "2) Salir"
    @list_op = gets.chomp.to_i
    case @list_op
      when 1 then list_dec
    else
      exit
    end
    menu_ppal
  end

  def list_dec
    if @declarantes.size == 0
      puts "No hay usuarios registrados que declaren renta."
      menu_ppal
    end
    @declarantes.each_with_index do |(key, user), idx|
      puts "User #{idx} :"
      puts "Cédula: #{key}"
      puts "Nombre: #{user['nombre']}"
      puts "Apellido: #{user['apellido']}"
      i_totales= user['salario'].inject {|sum, x| sum + x }
      puts "Ingresos totales: #{i_totales}"
    end
    p_declarantes = (@declarantes* 100) / @users.size
    puts "***Atención!***"
    puts "Sólo el #{p_declarantes}% de usuarios registrados debe declarar"
    puts "\n"
    menu_ppal
  end
end
