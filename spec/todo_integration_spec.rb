require 'todo_item'
require 'todo'

RSpec.describe "todo list" do
  it "adds item to list, returns list" do
    todo_list = ToDo.new
    todo_item = TodoItem.new("Buy Milk")
    todo_list.add(todo_item)
    expect(todo_list.print).to eq [todo_item]
  end

  it "adds two items to list, returns list" do
    todo_list = ToDo.new
    todo_item_0 = TodoItem.new("Buy Milk")
    todo_item_1 = TodoItem.new("Buy Bread")
    todo_list.add(todo_item_0)
    todo_list.add(todo_item_1)
    expect(todo_list.print).to eq [todo_item_0, todo_item_1]
  end

  it "adds two items to list, marks one as complete, returns incomplete" do
    todo_list = ToDo.new
    todo_item_0 = TodoItem.new("Buy Milk")
    todo_item_1 = TodoItem.new("Buy Bread")
    todo_list.add(todo_item_0)
    todo_list.add(todo_item_1)
    todo_item_0.mark_complete
    expect(todo_list.print).to eq [todo_item_1]
  end
end