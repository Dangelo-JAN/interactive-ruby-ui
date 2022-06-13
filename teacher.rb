require_relative "person"

class Teacher < Person
  def initializate(specialization: nil)
    super
    @specialization = specialization
  end

  def can_use_services
    return true
  end
end