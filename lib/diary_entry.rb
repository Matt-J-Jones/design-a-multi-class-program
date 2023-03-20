class DiaryEntry
  def initialize(title, contents) 
    @title = title
    @contents = contents.split(" ") # contents of entry split into array, for later checks
    @counter = 0
  end

  def title
    return @title
  end

  def contents
    # array of letters is joined into string
    return @contents.join(" ")
  end

  def count_words
    return @contents.length
  end

  def reading_time(wpm) 
    return @contents.length / wpm
  end

  def reading_chunk(wpm, minutes) 
    # returns a chunk of the entry with the given reading time & speed
    # updates a counter for ending position, so can start from where it was left
    # if entry is complete, tracker is returned to start of entry.
    string_to_return = @contents[@counter...@counter+(wpm * minutes)].join(" ")
    if @counter + (wpm * minutes) >= @contents.length
      @counter = 0
    else
      @counter += (wpm * minutes)
    end
    return string_to_return
  end
end