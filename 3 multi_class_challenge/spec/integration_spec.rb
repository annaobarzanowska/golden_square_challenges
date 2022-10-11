require 'todo_list'
require 'todo'

RSpec.describe "Integration" do
    context 'when we add a todo' do
        it 'adds that todo to the list' do 
            todo_list = TodoList.new
            todo = Todo.new('wash dog')
            todo2 = Todo.new('wash car')
            todo_list.add(todo)
            todo_list.add(todo2)
            expect(todo_list.incomplete).to eq "wash dog, wash car"
        end

        # it 'does not add duplicates' do
        #     todo_list = TodoList.new
        #     todo = Todo.new('wash dog')
        #     todo2 = Todo.new('wash dog')
        #     todo_list.add(todo)
        #     todo_list.add(todo2)
        #     expect(todo_list.incomplete).to eq [todo]
        # end
        it "shows all incomplete tasks" do
            todo_list = TodoList.new    
            todo = Todo.new('wash dog')
            todo2 = Todo.new('wash dishes')
            todo_list.add(todo)
            todo_list.add(todo2)
            expect(todo_list.incomplete).to eq "wash dog, wash dishes"
        end

        it "marks one item as complete" do
            todo_list = TodoList.new
            todo = Todo.new('wash dog')
            todo2 = Todo.new('wash dishes')
            todo3 = Todo.new('clean desk')
            todo_list.add(todo)
            todo_list.add(todo2)
            todo_list.add(todo3)
            todo.mark_done!
            expect(todo_list.complete).to eq 'wash dog - done.  '
        end
        it "mark multiple items as complete" do
            todo_list = TodoList.new
            todo = Todo.new('wash dog')
            todo2 = Todo.new('wash dishes')
            todo3 = Todo.new('clean desk')
            todo_list.add(todo)
            todo_list.add(todo2)
            todo_list.add(todo3)
            todo.mark_done!
            todo2.mark_done!
            expect(todo_list.complete).to eq 'wash dog - done. wash dishes - done. '
        end
        it "can mark all todos as complete" do
            todo_list = TodoList.new
            todo = Todo.new('wash dog')
            todo2 = Todo.new('wash dishes')
            todo3 = Todo.new('clean desk')
            todo_list.add(todo)
            todo_list.add(todo2)
            todo_list.add(todo3)
            expect(todo_list.give_up!).to eq 'wash dog - done. wash dishes - done. clean desk - done.'
        end
        
        
    end
end
