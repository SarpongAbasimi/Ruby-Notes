
name = " sapong"
raise 'Fail' unless  name ==='sapong'


class SimpleAddition
    def initialize(numOne,numTwo)
        @numOne=numOne
        @numTwo=numTwo
    end
    def add 
        @numOne + @numTwo
    end
end 


#name=SimpleAddition.new(8,7)


require 'test/Unit'

class Testing < Test::Unit::TestCase

     def test_basic
       assert_equal(9,SimpleAddition.new(2,7).add)
    end

end