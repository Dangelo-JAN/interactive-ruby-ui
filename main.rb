require 'app'

def main # rubocop:disable Metrics/CyclomaticComplexity, Metrics/MethodLength
  class << self
    def initialize
      app = App.new
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
      enterin_selection
    end

    def enterin_selection # rubocop:disable Metrics/CyclomaticComplexity,
      option = gets.chomp.to_i
      case option
      when 1 then app.book_list
      when 2 then app.people_list
      when 3 then app.create_person
      when 4 then app.create_book
      when 5 then app.create_rental
      when 6 then app.rentals_from_person_id
      when 7 then exit(true)
      else
        puts 'Sorry, you choose a wrong option'
        puts ''
        enterin_selection
      end
    end
  end
end

main
