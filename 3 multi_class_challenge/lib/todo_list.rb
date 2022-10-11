class TodoList
  def initialize
    @todo_list = []
  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
    @todo_list << todo
  end

  def incomplete
    # Returns all non-done todos
    return @todo_list.map { |e| e.task if e.done? == false}.join(", ")
  end

  def complete
    # Returns all complete todos
    return @todo_list.map { |e| e.task if e.done?}.join(" ")
  end

  def give_up!
    # Marks all todos as complete
    return @todo_list.map { |e| e.mark_done! }.join(" ")
  end
end