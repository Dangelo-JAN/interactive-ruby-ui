require_relative 'teacher'
require_relative 'student'
require_relative 'rental'

class App
  attr_accessor :books, :people, :rentals
  attr_reader :main

  def initialize(books = [], people = [], rentals = [])
    @books = books
    @people = people
    @rentals = rentals
  end

  def book_list
    puts 'Books list'
    @books.each { |book| puts "Title: \"#{book.title}\", Author: #{book.author}" }
  end

  def people_list
    puts 'People list'
    @people.each { |person| puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}" }
  end

  def create_person
    puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    person_type = gets.chomp.to_i
    case person_type
    when '1' then create_student
    when '2' then create_teacher
    else
      puts 'Invalid selection'
      create_person
    end
    puts 'Person created successfully'
  end

  def create_student
    puts 'Age: '
    age = gets.chomp.to_i
    puts 'Name: '
    name = gets.chomp
    puts 'Do you have permission[Y/N]: '
    parent_permission = gets.chomp
    student = Student.new(age, name, parent_permission: parent_permission)
    people << student unless @people.include?(student)
  end

  def create_teacher
    puts 'Age: '
    age = gets.chomp.to_i
    puts 'Name: '
    name = gets.chomp
    puts 'Do you have specialization[Y/N]: '
    specialization = gets.chomp
    teacher = Teacher.new(age, specialization, name)
    people << teacher unless @people.include?(teacher)
  end

  def create_book
    puts 'Title: '
    title = gets.chomp
    puts 'Author: '
    author = gets.chomp
    book = Book.new(title, author)
    books << book unless @books.include?(book)
    puts 'Book created successfully'
  end

  def create_rental
    puts 'Select a book from the following list by number'
    books.each_with_index do |book, index|
      puts "#{index}) Title: #{book.title}, Author: #{book.author}"
    end
    book_selection = gets.chomp.to_i
    puts
    puts 'Select a person from the following list by number (not id)'
    people.each_with_index do |person, index|
      puts "#{index}) Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
    person_selection = gets.chomp.to_i
    puts ''
    print('Enter the date of the rental (YYYY-MM-DD): ')
    rental_date = gets.chomp
    rental = Rental.new(rental_date, books[book_selection], people[person_selection])
    rentals << rental
    puts 'Rental created successfully'
  end

  def rentals_from_person_id
    puts 'Select a person from the following list by number (not id)'
    people.each_with_index do |person, index|
      puts "#{index}) Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
    print 'Enter the id of the person: '
    person_selection = gets.chomp.to_i
    puts 'Rentals:'
    person = people[person_selection]
    person.rentals.each do |rental|
      puts "Date: #{rental.date}, Book \"#{rental.book.title}\" by #{rental.book.author}"
    end
  end
end
