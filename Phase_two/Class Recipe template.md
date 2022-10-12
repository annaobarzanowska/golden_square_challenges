{{PROBLEM}} Class Design Recipe
1. Describe the Problem

Put or write the user story here. Add any clarifying notes you might have.

2. Design the Class Interface

Include the initializer and public methods with all parameters and return values.

# EXAMPLE
```ruby
```


3. Create Examples as Integration Tests

Make a list of examples of how the class will behave in different situations.

# EXAMPLE
```ruby
# 1
reminder = Reminder("Kay")
reminder.remind_me_to("Walk the dog")
reminder.remind() # => "Walk the dog, Kay!"

# 2
reminder = Reminder("Kay")
reminder.remind() # fails with "No task set."

# 3
reminder = Reminder("Kay")
reminder.remind_me_to("")
reminder.remind() # => ", Kay!"

Encode each example as a test. You can add to the above list as you go.
```
4. Create Examples as Unit Tests

```ruby

```

5. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
