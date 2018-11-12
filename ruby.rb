class Shape
end

class Square < Shape
    attr_reader :area
    def initialize(side_length)
        @side_length=side_length
    end

    def area
        @side_length * @side_length
    end

    def paramiter
        @side_length * 4
    end
end


firstSquare = Square.new(5)
puts firstSquare.area