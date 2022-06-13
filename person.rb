class Person
  attr_reader :id
  attr_accessor :name, :age

  def initilizate (name = "Unknown", age, parent_permission: true )
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services
    if is_of_age
      return true
    else
      return false     
    end
  end

  private
  def is_of_age
    if age >= 18
      return true
    else
      return false     
    end
  end
end