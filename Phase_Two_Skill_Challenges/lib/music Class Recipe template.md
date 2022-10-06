{{PROBLEM}} Class Design Recipe
1. Describe the ProblemAs a user
As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.
2. Design the Class Interface

Include the initializer and public methods with all parameters and return values.

# EXAMPLE

```ruby
class MusicListening
  def initalize
  end

  def add_tracks(text) # text is string representing tracks user has listened to
    # Returns nothing
  end

  def list_tracks
    # Returns tracks user has listened to
  end
end
```

3. Create Examples as Tests

Make a list of examples of how the class will behave in different situations.

# EXAMPLE

# 1
tracks = MusicListening.new
tracks.add_tracks('Crisps') => 'Crisps'

# 2
tracks = MusicListening.new
tracks.add_tracks('') => ''

# 3
tracks = MusicListening.new
tracks.add_tracks('Crisps')
tracks.add_tracks('Feeling Savoury')
tracks.list_tracks => ['Crisps', 'Feeling Savoury']

Encode each example as a test. You can add to the above list as you go.
4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
