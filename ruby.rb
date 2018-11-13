
#Created a ruby Module
module TryingModule
    def TryingModule.callme
        return "I am from TryingModule"
    end
end





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

class Myage
    def initialize(age,name)
        @age=age
        @name=name
    end
    #age method is private
    private
    def age
        return "You are #{@age} years old"
    end

    public
    def talk
        return "I am public"
    end
    
    #protected methods can still be accessed by other methods in the class
    def name
        " my name is #{@name}"
    end
    
    public
    def get_name
        return "Your name #{@name} was protected but I can still get it"
    end

    protected :name
end

ageOne = Myage.new(5,'kofi')
#puts ageOne.get_name()
=begin
che =(3..8).detect {|x| x%2==0}
puts che
=end

#inclusions from other directories

