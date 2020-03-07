require "car/version"

  module Car
    class MyCar
      SPEED_OFFSET = 15

      attr_accessor :color, :current_speed, :price
      attr_reader :year, :defects, :my_price


      def initialize(year,color,model)
        @year = year
        @color = color
        @model = model
        @current_speed = 0
        @defects = []
        @price = []
        @my_price = 5000
      end

      def speed_up(increase = SPEED_OFFSET)
        @current_speed += increase
      end

      def slow_down(slowly = SPEED_OFFSET)
        @current_speed -= slowly
      end

      def spray_paint(col)
        @color = col
      end

      def add_defects(defects)
        @defects << defects
      end

      def service_info
        df = @defects.join(', ')
        "Defects to be fixed: #{df}"
      end

      def for_sale(price)
        @price << price
        @price.join(', ')
        "Thank you for your price: #{price} but my price is #{my_price}"
      end
    end
  end
