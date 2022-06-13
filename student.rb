require_relative "person"

class Studen < Person
  def initializate(classroom: nil)
    super
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end