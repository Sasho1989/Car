require "car/version"

module Car
  class MyCar
    SPEED_OFFSET = 15

    attr_accessor :color, :current_speed
    attr_reader :year
    def initialize(model, year, color)
      @model = model
      @color = color
      @year = year
      @current_speed = 0
    end

    def speed_up(number = SPEED_OFFSET)
      @current_speed += number
    end

    def slow_down(number = SPEED_OFFSET)
      @current_speed -= number
    end
  end
end




