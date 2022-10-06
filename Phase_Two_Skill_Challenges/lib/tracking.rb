class ToDoList
    def initialize
        @tasks = []
    end

    def add_task(task)
        @tasks << task
    end

    def list_tasks
        @tasks
    end

    def complete_tasks(task)
        fail "Task not on list" unless @tasks.include?(task)
        @tasks.delete(task)
    end
end