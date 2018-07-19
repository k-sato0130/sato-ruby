require 'minitest/autorun'

class People

  def initialize(name,age,gender,hobbies)
    @name = name
    @age = age
    @gender = gender
    @hobbies = hobbies
  end

  def show
     "My name is #{@name} I am #{@age} years old"
  end

end

person1 = People.new("Katsuki", 23, "male", ["Baseball", "Reading books", "Programming"])
person1.show()
# -------------------------

describe People do
    before do
      @h1 = People.new("Katsuki", 23, "male", ["Baseball", "Reading books", "Programming"])
    end
    it 'should return the correct values' do
      expect(@h1.show()).must_equal('My name is Katsuki I am 23 years old')
    end
end
