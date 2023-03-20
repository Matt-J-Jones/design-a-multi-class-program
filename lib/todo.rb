class ToDo
  def initialize
    @list = []
  end

  def add(item)
    @list << item
  end

  def print
    return @list.select { |item| !item.complete? }
  end
end