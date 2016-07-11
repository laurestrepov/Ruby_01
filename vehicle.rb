class Vehicle
  attr_accessor :color, :wheels, :turned_on, :motor, :max_velocity, :current_velocity

  def initialize(color, wheels, motor, max_velocity)
    @color = color
    @wheels = wheels
    @motor = motor
    @max_velocity = max_velocity
    @current_velocity = 0
    @turned_on = false
  end

  def turn_on
    @turned_on = true
    puts "#{self.class} is turned on" if @turned_on
    @turned_on
  end

  def turn_off
    @turned_on = false
    puts "#{self.class} is turned off" unless @turned_on
    @turned_on
  end
end
