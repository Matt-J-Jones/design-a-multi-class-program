require 'phonebook_entry'

RSpec.describe PhonebookEntry do
  it "returns contact" do
    person = "Coby Simonson" 
    number = "+447770306616"
    contact = PhonebookEntry.new(person, number)
    expect(contact.contact).to eq [person, number]
  end

  it "returns contact name" do
    person = "Coby Simonson" 
    number = "+447770306616"
    contact = PhonebookEntry.new(person, number)
    expect(contact.contact_name).to eq person
  end

  it "returns contact number" do
    person = "Coby Simonson" 
    number = "+447770306616"
    contact = PhonebookEntry.new(person, number)
    expect(contact.contact_number).to eq number
  end
end