require "car/version"

module Car
  class MyCar
    attr_accessor :color, :current_speed
    attr_reader :year

    def initialize(year,color,model)
      @year = year
      @color = color
      @model = model
      @current_speed = 0
    end

    def speed_up
        @current_speed += 100
    end

  end
end