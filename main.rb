require_relative 'teacher'
require_relative 'student'
require_relative 'rental'

class ClassName
  def initialize
    
  end

  def intro_app
  puts 'Welcome to School Library App/n/n'

  puts 'Please choose an option enterin a number:'
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person id'
  puts '7 - Exit'
  end

  def enterin_selection
    option = gets.chomp.to_i

    case option
    when 1
      book_list
    when 2
      people_list
    when 3
      create_person
    when 4
      create_book
    when 5
      create_rental
    when 6
      rentals_from_person_id
    when 7
      exit(true)
    when String
      "You passed a string"
    else
      "You gave me #{x} -- I have no idea what to do with that."
    end   
  end

  def book_list
    puts "Books list" 
  end

  def people_list
    puts "People list"    
  end

  def create_person
    puts "Do you want to create a student (1) or a teacher (2)? [Input the number]: " person_type = gets.chomp.to_i
    puts "Age: " age = gets.chomp.to_i
    puts "Name: " name = gets.chomp.to_i
    puts "Do oyu have permission[Y/N]: " permission = gets.chomp.to_s    
  end

  def create_book
    
  end

  def create_rental
    
  end

  def rentals_from_person_id
    
  end
end




def main
  app = App.new()
  app.run()
end

main()

# class App
#   ...
# end

# ...

# def main
#   app = App.new()
#   app.run()
# end

# main()