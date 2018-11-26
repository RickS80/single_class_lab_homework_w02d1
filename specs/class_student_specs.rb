require ('minitest/autorun')
require ('minitest/rg')

require_relative ('../class_student.rb')

class TestStudent < Minitest::Test

  def test_initialise_student
    student = Student.new('Jonathan', 'E27')
    assert_equal('Jonathan', student.name)
    assert_equal('E27', student.cohort)
  end

  def test_set_name
    student = Student.new('Rick', 'E27')
    student.name = 'Jonathan'
    assert_equal('Jonathan', student.name)
  end

  def test_set_cohort
    student = Student.new('Rick', 'G5')
    student.cohort = 'E27'
    assert_equal('E27', student.cohort)
  end

  def test_talk
    student = Student.new("Rick", "E27")
    sentence = student.talk
    assert_equal("I can talk!", sentence)
  end

  def test_say_favourite_language
    student = Student.new("Rick", "E27")
    sentence = student.say_favourite_language("swahili")
    assert_equal("I love swahili", sentence)
  end
end
