{{PROBLEM}} Method Design Recipe
1. Describe the Problem

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

2. Design the Method Signature

Include the name of the method, its parameters, return value, and side effects.
```ruby 
to_do(text)
return whether text includes string /#TODO/


```
text is a string with words

3. Create Examples as Tests

Make a list of examples of what the method will take and return.

```ruby

# 1
to_do("")
fail 'No text added'

# 2
to_do("this is a string with #TODO in it')
# => 'There's a to-do item here'

# 3
to_do('this is just a string')
# => 'There's no to-do item here'

#4 
to_do("#TODO")
# => 'This is an empty to-do item'
```

4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.