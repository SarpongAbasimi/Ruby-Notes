
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
5)Match numbers /\d/
6)Match any alphabetical character /\w/
7)Match any whitespace character  /\s/
8)Match any character that is not a digit by using /\D/
9)Matcg and character that is not a and alphanumeric or unserscore character by using /\W/
10)It is important to note that when characters are grouped in parenthesis () and matched using ruby regular expressions, ruby automatically generates
  gobal variables eacth representing each to the sub groups. 
  example - /([A-Za-z]+),[A-Za-z]+,(Mrs?\.)/.match("Peel,Emma,Mrs.,talented amateur")
  calling $1 in ruby string interpolation will result in Peel.
  calling $2 will result in Emma and calling $0 will result in ruby printing out the name of the file.(Basically your carrunt working file.
=end




