```Ruby
#1
todo_list = ToDo.new
todo_list.print #=> []

#2
todo_list = ToDo.new
todo_item = TodoItem.new("Buy Milk")
todo_list.add(todo_item)
todo_list.print #=> [todo_item]

#3
todo_list = ToDo.new
todo_item_0 = TodoItem.new("Buy Milk")
todo_item_1 = TodoItem.new("Buy Bread")
todo_list.add(todo_item_0)
todo_list.add(todo_item_1)
todo_list.print #=> [todo_item_0, todo_item_1]

#4
todo_list = ToDo.new
todo_item_0 = TodoItem.new("Buy Milk")
todo_item_1 = TodoItem.new("Buy Bread")
todo_list.add(todo_item_0)
todo_list.add(todo_item_1)
todo_item_0.mark_complete
todo_list.print #=> [todo_item_1]
```