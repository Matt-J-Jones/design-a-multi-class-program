require 'phonebook'

RSpec.describe Phonebook do
  it "returns phonebook" do
    phonebook = Phonebook.new
    expect(phonebook.print).to eq []
  end
end