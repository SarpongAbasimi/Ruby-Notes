#Regular expression in Ruby

=begin
Regular expressions are used to match patterns.
In ruby patterns are matched inside the two //.

eg) 'Hello Boy'.match(/B/)  #This is saying is there a match  for letter'B' in the  'Hello Boy' string object
Another means of matching items in ruby is using the =~ sign.This returns the position of the matched character.
eg) 'The tree' =~ /t/  #this will return 4 since t is at possition 4
Some commonly used regex.
1) The dot wildcard(.) eg /.ele/ #This is saying match any letter followed by ele.
2)Character classses eg /[dr]ae/ #This is saying , match characters starting with eaither a d or r followed by ae
3)Range eg /[a-z]/
4)Caret - Match anything except [^a-z]



=end




