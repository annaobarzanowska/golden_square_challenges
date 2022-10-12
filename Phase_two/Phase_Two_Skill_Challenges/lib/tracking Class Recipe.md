{{PROBLEM}} Class Design Recipe
1. Describe the Problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

2. Design the Class Interface

Include the initializer and public methods with all parameters and return values.

# EXAMPLE

```ruby
class ToDoList
  def initialize
    # ...
  end

  def add_task(task) # task is a string
    # return nothing
  end

  def list_tasks
    # returns list of tasks as a string
  end

  def completed_tasks(task) # task is a string
    # returns nothing
    # fails if doesn't exist
    # delete completed task from list_tasks

  end

end
```

3. Create Examples as Tests

Make a list of examples of how the class will behave in different situations.

# EXAMPLE

```ruby
# 1
new_task = ToDoList.new
new_task.add_task('do dishes') => 'do dishes'

# 2
list = ToDoList.new
list.add_task('do dishes')
list.add_task('pet dog')
list.list_tasks => ['do dishes', 'pet dog']

# 3
completed = ToDoList.new
completed.add_task('do dishes')
completed.add_task('pet dog')
completed.completed_tasks('pet dog') => ['do dishes']

# 4
completed = ToDoList.new
completed.add_task('do dishes')
completed.add_task('pet dog')
completed.completed_tasks('take out rubbish') => fail
```

Encode each example as a test. You can add to the above list as you go.
4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
