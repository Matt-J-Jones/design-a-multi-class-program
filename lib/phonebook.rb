class Phonebook
  def initialize
    @phonebook = []
  end

  def add(contact)
    @phonebook << contact
  end

  def print
    return @phonebook
  end
end