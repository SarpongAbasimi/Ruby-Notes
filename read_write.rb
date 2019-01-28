=begin In ruby there are soo may ways to achive a task
A class with methods can be created like this 
=end


class Person 
  def set_name(name)
    @name=name
  end
  
  def call_name
    @name
  end
end

first_person =Person.new
first_person.setname('nana')
first_person.call_name // nana

=begin
That is a good way of defining a name by it could
be done in a better way. when an instance of the 
class is created when new is called on the class
initialize is run. We could set the state of the class in there
=end

class Person
  def initialize(name ,venue)
    @name = name
    @venue = venue
  end
  
  def get_name
    @name
  end
end

=begin Now when an instance of the class is created it will expect to receive 2 arguments
setter_function can use to set the variable for the instance variable
=end

class Person
  def initialize(name ,venue)
    @name = name
    @venue = venue
  end
  
  def name=(new_name)
    @name=new_name
  end
  
  def name
    @name
  end
end

=begin
//This is all great but when the code starts to scale it can be a little bit ugly
//Ruby introduces the reader and writer attr which eliminate the need for exlicitly defininf methods
// note that a combination of reader and writer is attr_accessor.
//This means that instead of having both attr_reader and attr_writer for name , it could be replace by attr_accessor :name
=end

class Person
  attr_reader :name , :event
  attr_writer :name  #or 
  attr_accessor :name
end









