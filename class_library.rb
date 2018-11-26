class Library
  attr_reader :books

  def initialize()
    @books =
    [
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      }
    ]
  end

end
