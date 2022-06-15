require_relative 'nameable'

class Decorator < Nameable
  def initialize
    super(nameable = Nameable.new)
    @nameable = nameable
  end

  def correct_name
    @nameable
  end
end
