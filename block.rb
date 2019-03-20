=begin
“The & prefix operator allows a method to capture a passed block as a named parameter:

​ 	​def​ wrap &b
​ 	  print ​"Santa says: "​
​ 	  3.times(&b)
​ 	  print ​"​​\n​​"​
​ 	​end​
​ 	wrap { print ​"Ho! "​ }
Within a block, or a method, control is sequential except when an exception occurs.”
=end

