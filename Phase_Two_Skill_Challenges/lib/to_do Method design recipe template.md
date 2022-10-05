{{PROBLEM}} Method Design Recipe
1. Describe the Problem

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.    

2. Design the Method Signature

Include the name of the method, its parameters, return value, and side effects.

```ruby

to_do(text)
return whether text includes /#TODO/
```
text is a string with words

3. Create Examples as Tests

Make a list of examples of what the method will take and return.

#1
# to_do("")
# => "No to-do items"

#2
# to_do("this is a string with a #TODO item")
# => "This includes a to-do item"

#3
# to_do("#TODO")
# => "No to-do items"

#4
# to_do("this is just a plain string")
# => "No to-do items"

4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.