require 'tracking'

RSpec.describe ToDoList do 
    it "adds task to task list" do
        new_task = ToDoList.new
        expect(new_task.add_task('do dishes')).to eq ['do dishes']
    end

    it "shows list of uncompleted tasks" do
        list = ToDoList.new
        list.add_task('do dishes')
        list.add_task('pet dog')
        expect(list.list_tasks).to eq ['do dishes', 'pet dog']
    end

    it "takes completed tasks from tasks list" do
        completed = ToDoList.new
        completed.add_task('do dishes')
        completed.add_task('pet dog')
        completed.complete_tasks('pet dog')
        expect(completed.list_tasks).to eq ['do dishes']
    end

    it "fails when user attempts to complete a task not on task list" do
        completed = ToDoList.new
        completed.add_task('do dishes')
        completed.add_task('pet dog')
        expect{ completed.complete_tasks('take out rubbish') }.to raise_error "Task not on list"
    end
end