class CashRegister
  attr_accessor :total

  def initialize(total)
    @total = total
  end

  def add(amount)
    self.total = self.total + amount
  end
end

class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    roster[grade] = []
    roster[grade] << student
  end
end

class School2
  attr_accessor :name, :age

  def initialize(name)
    @name = name
    @age = 0
  end

  def update_age(updated_age)
    age = updated_age
  end
end

# cashregister = CashRegister.new(100)
# cashregister.add(100)
# puts cashregister.total
#
school = School.new("Jefferson High")
puts school.roster
school.add_student("Sam", 10)
puts school.roster

school = School2.new("Lincoln High")
puts school.age
school.update_age(10)
puts school.age
