{{PROBLEM}} Class Design Recipe
1. Describe the Problem

As a user
so that I know how to better allocate my remaining time
I want to view a to do list with complete and incomplete items

As a user
so that I regain free time
I can mark all my todos as complete

As a user


2. Design the Class Interface

Include the initializer and public methods with all parameters and return values.

# EXAMPLE
```ruby
class Todo
    def initialize(task)
        # returns nothing
    end

    def task # add a task 
    # task is a string
    # returns the task as a string
    end

    def mark_done! # mark a task complete 
    # task is a string
    # returns nothing
    end

    def done? 
    # returns true if the task is done
    # otherwise false
    end

end

# File: lib/todo_list.rb
class TodoList
  def initialize
  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
  end

  def incomplete
    # Returns all non-done todos
  end

  def complete
    # Returns all complete todos
  end

  def give_up!
    # Marks all todos as complete
  end
end
```



3. Create Examples as Tests

Make a list of examples of how the class will behave in different situations.

# EXAMPLE

# 1 add entries to my todo_list
todo_list = TodoList.new
todo1 = Todo.new('take a shower')
todo2 = Todo.new('go for a walk')
todo_list.add(todo1, todo2)
todo_list.incomplete => todo1, todo2

# 2 doesn't add duplicate
todo_list = TodoList.new
todo = Todo.new('wash dog')
todo2 = Todo.new('wash dog')
todo_list.add(todo)
todo_list.add(todo2)
todo_list.incomplete.to eq [todo]

# 3 can view incomplete
todo_list = TodoList.new
todo = Todo.new('wash dog')
todo2 = Todo.new('wash dishes')
todo_list.add(todo)
todo_list.add(todo2)
todo_list.incomplete.to eq [todo, todo2]

# 4 can mark complete
todo_list = TodoList.new
todo = Todo.new('wash dog')
todo2 = Todo.new('wash dishes')
todo3 = Todo.new('clean desk')
todo_list.add(todo)
todo_list.add(todo2)
todo_list.add(todo3)
todo.mark_done!
todo_list.complete.to eq 'wash dog'

# 5 can mark all incomplete as complete
todo_list = TodoList.new
todo = Todo.new('wash dog')
todo2 = Todo.new('wash dishes')
todo3 = Todo.new('clean desk')
todo_list.add(todo)
todo_list.add(todo2)
todo_list.add(todo3)
todo_list.give_up!.to eq 'You've marked all your tasks as done'
todo_list.complete.to eq todo, todo2, todo3

# 6 can query whether task is complete
todo_list = TodoList.new
todo = Todo.new('wash dog')
todo2 = Todo.new('wash dishes')
todo3 = Todo.new('clean desk')
todo_list.add(todo)
todo_list.add(todo2)
todo_list.add(todo3)


Encode each example as a test. You can add to the above list as you go.
4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
