```Ruby
#1
diary = Diary.new
entry_0 = DiaryEntry.new("Entry_0", "Hello, world")
diary.add(entry)
diary.all #=> [entry]

#2
diary = Diary.new
entry_0 = DiaryEntry.new("Entry_0", "Hello, world")
entry_1 = DiaryEntry.new("Entry_1", "Phasellus non consectetur.")
diary.add(entry_0)
diary.add(entry_1)
diary.all #=> [entry_0, entry_1]

#3
diary = Diary.new
entry_0 = DiaryEntry.new("Entry_0", "Hello, world")
entry_1 = DiaryEntry.new("Entry_1", "Phasellus non consectetur.")
diary.add(entry_0)
diary.add(entry_1)
diary.count_words #=> 5

#4
diary = Diary.new
entry_0 = DiaryEntry.new("Entry_0", "Hello, world")
entry_1 = DiaryEntry.new("Entry_1", "Phasellus non consectetur.")
entry_2 = DiaryEntry.new("Entry_2", "Aliquam erat volutpat. Donec ac.")
diary.add(entry_0)
diary.add(entry_1)
diary.add(entry_2)
diary.find_best_entry_for_reading_time(1, 3) #=> [entry_1]
```