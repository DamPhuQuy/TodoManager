class Task
  attr_reader :id, :description # create getter
  attr_accessor :completed # create getter and setter

  def initialize(id, description, completed = false)
    @id = id
    @description = description
    @completed = completed
  end

  def completed?
    @completed
  end

  # toString()
  def to_s
    status_icon = completed? ? "[x]" : "[ ]"
    "#{status_icon} #{@description}"
  end
end

