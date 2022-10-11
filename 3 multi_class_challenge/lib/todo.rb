class Todo
  def initialize(task)
      # returns nothing
      @task = task

  end

  def task # add a task 
  # task is a string
  # returns the task as a string
    @task
  end

  def mark_done! # mark a task complete 
  # task is a string
    @task = @task + " - done."
  # returns nothing
  end

  def done?
  # returns true if the task is done
    @task.include?('done')
  # otherwise false
  end

end