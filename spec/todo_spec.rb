require 'todo'

RSpec.describe ToDo do
  it "creates list, prints empty list" do
    todo_list = ToDo.new
    expect(todo_list.print).to eq []
  end
end