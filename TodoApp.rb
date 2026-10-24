require_relative 'TodoList'

class TodoApp
  def initialize
    @todo_list = TodoList.new
  end

  def run
    loop do
      puts("\nTodo List Application")
      puts("1. Add Task")
      puts("2. View Tasks")
      puts("3. Complete Task")
      puts("4. Delete Task")
      puts("5. Exit")
      print("Choose an option: ")
      choice = gets.chomp.to_i # ~ int choice = scanner.nextInt();

      case choice # ~ switch (choice)
      when 1
        print("Enter task title: ")
        title = gets.chomp
        print("Enter task description (optional): ")
        description = gets.chomp
        @todo_list.add(title, description)
      when 2
        @todo_list.view
      when 3
        print("Enter task ID to complete: ")
        id = gets.chomp.to_i
        @todo_list.complete(id)
      when 4
        print("Enter task ID to delete: ")
        id = gets.chomp.to_i
        @todo_list.delete(id)
      when 5
        puts("Exiting the application.")
        break
      else
        puts("Invalid option. Please try again.")
      end
    end
  end
end

