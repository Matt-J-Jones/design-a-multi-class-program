```Ruby
#1
phonebook = Phonebook.new
phonebook.print #=> []

#2
phonebook = Phonebook.new
contact = Contact.new("Coby Simonson", "+447770306616")
phonebook.add(contact)
phonebook.print #=> [contact]

#3
phonebook = Phonebook.new
contact_0 = Contact.new("Coby Simonson", "+447770306616")
contact_1 = Contact.new("Denny Bellamy", "+447190074398")
phonebook.add(contact_0)
phonebook.add(contact_1)
phonebook.print #=> [contact_0, contact_1]
```