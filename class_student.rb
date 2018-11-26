class Student

  attr_reader :name, :cohort
  attr_writer :name,

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

end
