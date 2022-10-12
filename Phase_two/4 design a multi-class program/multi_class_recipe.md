{{PROBLEM}} Class Design Recipe
1. Describe the Problem

Put or write the user story here. Add any clarifying notes you might have.

  <!-- As a user
  So that I can record my experiences
  I want to *keep* a regular *diary*

  As a user
  So that I can reflect on my experiences
  I want to *read* my past *diary entries*

  As a user
  So that I can reflect on my experiences in my busy day
  I want to *select* *diary entries* to *read* based on how much *time* I have and my *reading speed*

  As a user
  So that I can keep track of my tasks
  I want to *keep* a *todo list* along with my *diary* -->

  As a user
  So that I can keep track of my contacts
  I want to see a *list* of all of the mobile *phone numbers* in all my *diary entries*


2. Design the Class Interface

Include the initializer and public methods with all parameters and return values.
              ┌───────────────────────┐ ┌──────────────────┐    ┌────────────────────────────┐
┌──────────┐  │Diary                  │ │ DiaryEntry       │    │PhoneNumbers                │
│ToDoList  ├──►=====                  │ │ ==========       │    │============                │
│======    │  │- add(diary_entry)     ◄─┤ - title          │      - phone_num(diary_entry)    │
│-add(todo)│  │- read_all             │ │ - content        │    │                            │
├──────▲─┬─┘  │- readable_entry        │ │ - word_count     │    │                            │
│ToDo  │ │    │                       │ │                  │    └────────────────────────────┘
│=====   │    └───────────────────────┘ └──────────────────┘
│- todo  │                                                            
└────────┘
# EXAMPLE
```ruby
class Diary
  def initialize
  # array of entries, instances of DiaryEntry
  end
  def add(entry) # instance of DiaryEntry
  end

  def read_all
  # returns all entries
  end

  def readable_entry(wpm, minutes)
  # returns most readable chunk
  end
  def phone_numbers
  # returns list of phone numbers in content
  #instance of PhoneNumbers
  end

  def task_list
  # read all tasks
  end


end

class DiaryEntry
  def initialize(title, content)
  @title = title
  @content = content
  end
  
  def title
  @title
  end
  def content
  @content
  end
  def word_count
  # returns word count of @content
  end
end

class PhoneNumbers
  def initialize(diary) #instance of Diary
  end

  def phone_numbers
  # extracts phone numbers
  # returns phone numbers
  end
end

class TodoList
  def add(todo) # todo is an instance of Todo
  end

  def todos
  # return a list of todos
  end
end

class Todo
  def initialize(todo)

  end

  def todo
  # return that todo
  end  
end
```


3. Create Examples as Integration Tests

Make a list of examples of how the class will behave in different situations.

# EXAMPLE
```ruby
# 1 add diary entries to Diary
diary = Diary.new
entry_1 = DiaryEntry.new('monday', 'went for a walk')
entry_2 = DiaryEntry.new('tuesday', 'had fish and chips')
diary.add(entry_1)
diary.add(entry_2)
expect(Diary.read_all).to eq [entry_1, entry_2]

# 2 return most readable entry for time user has to read
diary = Diary.new
entry_1 = DiaryEntry.new('monday', 'went for a walk')
entry_2 = DiaryEntry.new('tuesday', 'had fish and chips and a sausage')
entry_3 = DiaryEntry.new('wednesday', 'nothing')
diary.add(entry_1)
diary.add(entry_2)
diary.add(entry_3)
expect(diary.readable_entry(4, 1)).to eq entry_1

# 3 keep a todo list with my diary
diary = Diary.new
todolist = TodoList.new
todo_1 = Todo.new('walk the dog')
todo_2 = Todo.new('brish my teeth')
todolist.add(todo1)
todolist.add(todo2)
expect(todolist.todos).to eq todo_1, todo_2
expect(diary.task_list).to eq todolist.todos

# 4 list phone numbers from content
diary = Diary.new
numbers = PhoneNumbers.new(diary)
entry_1 = DiaryEntry.new('monday', 'this is my number 01366789456')
entry_2 = DiaryEntry.new('tuesday', '01223666587 - restaurant')
entry_3 = DiaryEntry.new('wednesday', '01223666587')
diary.add(entry_1)
diary.add(entry_2)
diary.add(entry_3)
expect(numbers.phone_numbers).to eq ['01366789456','01223666587']

```

Encode each example as a test. You can add to the above list as you go.

4. Create Examples as Unit Tests

```ruby
class DiaryEntry
# 1 add entry
entry = DiaryEntry.new('today', 'watched some news')
expect(DiaryEntry.title).to eq 'today'
expect(DiaryEntry.content).to eq 'watched some news'


```

5. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
