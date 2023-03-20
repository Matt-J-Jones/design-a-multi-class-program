require 'phonebook_entry'
require 'phonebook'

RSpec.describe "adds contact to phonebook, prints phonebook" do
  it "adds person to contact list, prints list" do
    contact_list = Phonebook.new
    person = "Coby Simonson" 
    number = "+447770306616"
    contact = PhonebookEntry.new(person, number)
    contact_list.add(contact)
    expect(contact_list.print).to eq [contact]
  end

  it "adds two people to contact list, prints list" do
    contact_list = Phonebook.new
    person_0 = ["Coby Simonson", "+447770306616"]
    contact_0 = PhonebookEntry.new(person_0[0], person_0[1])
    person_1 = ["Denny Bellamy", "+447955505761"]
    contact_1 = PhonebookEntry.new(person_1[0], person_1[1])
    contact_list.add(contact_0)
    contact_list.add(contact_1)
    expect(contact_list.print).to eq [contact_0, contact_1]
  end
end