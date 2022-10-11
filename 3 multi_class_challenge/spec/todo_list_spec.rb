require 'todo_list'

RSpec.describe TodoList do
    context 'when we add a todo' do
        it 'adds that todo to the list' do 
            todo_list = TodoList.new
            todo = Todo.new('wash dog')
            todo_list.add(todo)
            expect(todo_list.incomplete).to eq 'wash dog'
        end
    end
end