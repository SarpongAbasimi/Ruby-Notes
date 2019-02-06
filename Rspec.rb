#shortcuts
=begin
  rspec --help ('This bring up various helper funtions')
  rspec --fd ('This runs the specs in a nicely documented format') # f =format #d =documentation
  rspec -e Hello -fd ("This runs just a single example which has Hello in its description")
  rspec <file path>:linenumber (this runs a specific exmaple at the line provided)
  rspec --only-failures ('reruns just examples that failed') use RSpec.config {|c| example_status_persistence_file_path= path}
  note =>  to run just failures Rspec needs a place to put failed example specs.
  rspec --profile ("This tells You about the profile of your test meaning the lowest running tests")
=end

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
  
      it 'should be able to have toppings' do 
        sandwich=Sandwich.new('delicious',[])
        toppings=sandwich.topping << 'cheese'

        expect(toppings).not_to be_empty
      end
end
  
  
=begin
  Ruby allows to avoid repetions.
In the previous example whenever a test case is being written
the sandwich setup code has to be copied and repeted again. We can to better !
rspec allows as to use hooks , helper methods and let construct to avoid this repetitions.
=end

#examples

Rspec.describe Sandwich do
  before { @sandwich = Sandwhich.new }
  
      it 'is delicious' do
        # sandwich =Sandwich.new('delicious',[]) Now we don't need this
        taste = @sandwich.taste
          #expectations are like assertions in other languages. Here we tell the programme what we expect state to be.
        expect(taste).to eq('delicious')
    end
  
        it 'should be able to have toppings' do 
        #sandwich=Sandwich.new('delicious',[])
        toppings=@sandwich.topping << 'cheese'

        expect(toppings).not_to be_empty
      end
end
  
  
  
