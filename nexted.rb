class Drawing
    def self.i_create_circle(side_length)
        Square.new(side_length)
    end

    class Circle 
    end

    class Square
        def initialize(side_length)
            @side_length =side_length
        end

        def return_Side_length
            return @side_length
        end
    end
end


firstCircle=Drawing.i_create_circle(4)
puts firstCircle.return_Side_length()