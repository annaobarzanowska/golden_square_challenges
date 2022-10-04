{{PROBLEM}} Method Design Recipe
1. Describe the Problem

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

2. Design the Method Signature

Include the name of the method, its parameters, return value, and side effects.

reading_time(text_length)
return text_length / 200

# EXAMPLE
# `reading_time` parameter is text length in words, which is divided by 200, giving the number of minutes it'll take the user to read the text

# The method doesn't print anything or have any other side-effects

3. Create Examples as Tests

Make a list of examples of what the method will take and return.

# EXAMPLE

reading_time(5000) => 4
reading_time(10000) => 8
reading_time(3456986) => 17284.93

Encode each example as a test. You can add to the above list as you go.
4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.