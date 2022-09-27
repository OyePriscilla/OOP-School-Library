require_relative 'nameable'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name = 'unknown', parent_permission: true)
    super()
    @id = Random.rand(1..100)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def correct_name
    @name.correct_name
  end

  def of_age?
    @age >= 18
  end

  def can_use_services?
    @age >= 18 || parent_permission
  end

  private :is_of_age?
end
