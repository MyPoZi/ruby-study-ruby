class Person2
  def initialize
    @given_name = "太郎"
    @family_name = "浦島"
    @age = 100
  end

  def name(full: true , with_age: true)
    n = if full
          "#{given_name} #{family_name}"
        else
          given_name
        end
    n << "(#{age})" if with_age
    n
  end

  private

  def given_name
    @given_name
  end

  def family_name
    @family_name
  end

  def age
    @age
  end
end

person = Person2.new()
puts person.name
puts person.name(full: false, with_age: false)
puts person.name(with_age: false)
puts person.name(full: false)