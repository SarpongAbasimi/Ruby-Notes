=begin
it is important to recognise that everything in ruby is an object.
When an object is created with Object.new , that object automatically pocesses 
innate abilities but we will look at three main regularly used methods.

1) respond_to? - When an object is born , it doesn't really know anything unless it is thought!
eg. ticket = Object.new
    ticket.talk
calling  the talk method on the ticket will cause an error because the ticket obecjt knows nothing
about it. the respond_to('name of metod here) when passed in the name of the method will return a boolean.

  if ticket.respond_to?('price')
    return ticket.price
  else
    puts "Sorry , I don't know what you mean"
  end
  
2) The second innate ability is the object_id method.
when called on an object , it returns a unique id of the object.
this is really important becasue it enables one to know whether  two objects are equal or not.


3) The third innate ability is the send method.

=end

//Example one
ticket = Object.new
ticket.talk
    
    
if ticket.respond_to?('price')
  return ticket.price
else
   puts "Sorry , I don't know what you mean"
end
