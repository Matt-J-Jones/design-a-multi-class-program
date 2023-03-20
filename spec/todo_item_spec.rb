require 'todo_item'

RSpec.describe TodoItem do
  it "returns task" do
    item = TodoItem.new("Buy Bread")
    expect(item.task).to eq "Buy Bread"
  end

  it "returns false when not marked complete" do
    item = TodoItem.new("Buy Bread")
    expect(item.complete?).to eq false
  end

  it "returns true when marked complete" do
    item = TodoItem.new("Buy Bread")
    item.mark_complete
    expect(item.complete?).to eq true
  end
end