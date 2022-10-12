{{PROBLEM}} Class Design Recipe
1. Describe the Problem

Put or write the user story here. Add any clarifying notes you might have.
2. Design the Class Interface

```ruby

# File: lib/diary.rb
class Diary
  def initialize
  end

  def add(entry) # entry is an instance of DiaryEntry
    # Returns nothing
  end

  def all
    # Returns a list of instances of DiaryEntry
  end

  def count_words
    # Returns the number of words in all diary entries
    # HINT: This method should make use of the `count_words` method on DiaryEntry.
  end

  def reading_time(wpm) # wpm is an integer representing
                        # the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # if the user were to read all entries in the diary.
  end

  def find_best_entry_for_reading_time(wpm, minutes)
        # `wpm` is an integer representing the number of words the user can read
        # per minute.
        # `minutes` is an integer representing the number of minutes the user
        # has to read.
    # Returns an instance of diary entry representing the entry that is closest 
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.
  end
end

# File: lib/diary_entry.rb
class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    # ...
  end

  def title
    # Returns the title as a string
  end

  def contents
    # Returns the contents as a string
  end

  def count_words
    # Returns the number of words in the contents as an integer
    # use .split.length methods?
  end

  def reading_time(wpm) # wpm is an integer representing
                        # the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
  end

  def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
  end
end
```
3. Create Examples as Tests

Make a list of examples of how the class will behave in different situations.

# 1 add entry to Diary
diary = Diary.new
entry1 = DiaryEntry.new('monday', 'feeling blue')
entry2 = DiaryEntry.new('tuesday', 'feeling better')
diary.add(entry1)
diary.add(entry2)
diary.all => ( entry1, entry2)

# 2 can't add empty entries to Diary
diary = Diary.new
entry1 = DiaryEntry.new("")
diary.add(entry1) => fail 'No entry added' unless entry1.empty?

# 3 can't add duplicates to Diary
diary = Diary.new
entry1 = DiaryEntry.new('monday', 'feeling blue')
entry2 = DiaryEntry.new('monday', 'feeling blue')
diary.add(entry1)
diary.add(entry2) => fail "An entry like this exists" if entry2.match?(all)

# 3 count all words
diary = Diary.new
entry1 = DiaryEntry.new('monday', 'feeling blue')
entry2 = DiaryEntry.new('tuesday', 'feeling better')
diary.add(entry1)
diary.add(entry2)
diary.count_words => 6

# 4 count reading time
diary = Diary.new
entry1 = DiaryEntry.new('monday', ('feeling blue' * 500))
diary.add(entry1)
diary.reading_time(200) => 4

# 5 find_best_entry_for_reading_time
diary = Diary.new
entry1 = DiaryEntry.new('monday', ('feeling blue' * 200))
entry2 = DiaryEntry.new('tuesday', ('feeling better' * 1000))
diary.add(entry1)
diary.add(entry2)
diary.find_best_entry_for_reading_time

Encode each example as a test. You can add to the above list as you go.
4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
