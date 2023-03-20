class PhonebookEntry
  def initialize(name, number)
    @name = name
    @number = number
  end

  def contact
    return [@name, @number]
  end

  def contact_name
    return @name
  end

  def contact_number
    return @number
  end
end