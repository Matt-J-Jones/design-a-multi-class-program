class TodoItem
  def initialize(task)
    @task = task
    @complete = false
  end

  def task
    return @task
  end

  def mark_complete
    @complete = true
  end

  def complete?
    return @complete
  end
end