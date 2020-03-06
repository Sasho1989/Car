require "car/version"

module Car
  class MyCar
    SPEED_OFFSET = 15

    attr_accessor :color, :current_speed
    attr_reader :year, :defects
    def initialize(model, year, color)
      @model = model
      @color = color
      @year = year
      @current_speed = 0
      @defects = []
    end

    def speed_up(number = SPEED_OFFSET)
      @current_speed += number
    end

    def slow_down(number = SPEED_OFFSET)
      @current_speed -= number
    end

    def spray_paint(arg)
      @color = arg
    end

    def add_defects(defect)
      @defects.push(defect)
    end

    def service_info
      defects = @defects.join(', ')
      "Detected defects: #{defects}"
    end

    def fix_defect(defects)
      @defects = defects
      @defects.delete(defects)
    end
  end
end




