require "car/version"

module Car
  class MyCar
    attr_accessor :color, :current_speed
    attr_reader :year
    def initialize(model, year, color)
      @model = model
      @color = color
      @year = year
      @current_speed = 0
    end

    def speed_up(number)
      @current_speed += number
    end
  end  
end    




