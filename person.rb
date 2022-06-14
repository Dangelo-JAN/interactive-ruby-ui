class Person
  attr_reader :id
  attr_accessor :name, :age

  def initilizate(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services
    return true if is_of_age

    false
  end

  private

  def is_of_age # rubocop:disable Naming/PredicatedName
    return true if @age >= 18

    false
  end
end
