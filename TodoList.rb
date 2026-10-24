require_relative 'Task'

class TodoList
  def initialize
    @tasks = []
    @next_id = 1
  end

  def add(title, description = "")
    task = Task.new(@next_id, title, description)
    @tasks << task # ~ list.add(task)
    @next_id += 1
    puts("Task added: #{task.title} (ID: #{task.id})")
  end

  def view
    if @tasks.empty?
      puts("No tasks in the list.")
      return
    end

    puts "Tasks in the list:"
    @tasks.each { |task| puts "- #{task.to_s} (ID: #{task.id})" }
    # tasks.forEach(task -> System.out.println("- " + task.getTitle() + " (ID: " + task.getId() + ")"));
  end

  def complete(id)
    task = find_by_id(id)
    if task
      task.completed = true
      puts("Task completed: #{task.title} (ID: #{task.id})")
    else
      puts("Task with ID #{id} not found.")
    end
  end

  def delete(id)
    task = find_by_id(id)
    if task
      @tasks.delete(task)
      puts("Task deleted: #{task.title} (ID: #{task.id})")
    else
      puts("Task with ID #{id} not found.")
    end
  end

  private
  def find_by_id(id)
    @tasks.find { |task| task.id == id }
    # tasks.stream().filter(task -> task.getId() == id).findFirst().orElse(null);
  end
end

