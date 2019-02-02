=begin
Rspec allows You to test code to ensure
that they work correctly.

eg.
Rspec.describe'This describe the project ' do
  it 'should be deliciuos' do 
    #Actually test goes here
  end
end

The Rspec.describe blog opens a block where we can put our examples.
Example refers to the actually test we write using Rspec API.
spec refers to specifications or how we would like the test to look.

#Note

usually our suites are stored in a subdirectory call spec.
To run our spec and get the an output, we call the command rspec.This
command will look into the spec subdirectory and run the fle in there
=end

#instead of using class Sandwich Struct could have been used.
#Struct is one of Rubys built in class.

Sandwich= Struct.new(:taste , :topping) do

end

class Sandwich 
    attr_accessor :taste ,:topping

    def initialize(taste,topping)
        @taste=taste
        @topping=topping
    end
end




RSpec.describe 'An ideal sandwich' do
    it 'is delicious' do
        sandwich =Sandwich.new('delicious',[])
        taste = sandwich.taste
          #expectations are like assertions in other languages. Here we tell the programme what we expect state to be.
        expect(taste).to eq('delicious')
    end
end
