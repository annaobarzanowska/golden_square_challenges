class TodoList
    def initialize
        @todo = []
    end

    def add(todo) # instance of Todo
        @todo << todo
         # todo is an instance of Todo
    end
  
    def todos
    # return a list of todos
    return @todo
    end
end