#Shape is the parent class
class Shape
end

#Square inherits from the parents class
class Square < Shape
    #class variable to track the number of instances of class created
    @@Square_created=0
    
    attr_reader :area
    def initialize(side_length)
        @side_length=side_length
        @@Square_created += 1

    end

    def area
        @side_length * @side_length
    end

    def paramiter
        @side_length * 4
    end
    #class method for the class Square
    def self.num_squares
        return @@Square_created
    end
end

=begin
firstSquare = Square.new(5)
myCount = Square.new(75)
puts Square.num_squares
=end

class Person
    def initialize(name)
        @name=name
    end

    def name
        return " " + @name
    end
end

class Doctor < Person
    def name 
        "Dr".concat(super)
    end
end

doc= Doctor.new('Nana')
puts doc.name