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

  def book_info(book_name)
    for book in @books
      if book[:title] == book_name
        return book
      end
    end
  end

  def rental_info(book_name)
    for book in @books
      if book[:title] == book_name
        return book[:rental_details]
      end
    end
  end

  def add_new_book(book_name)
    @books << book_name
  end

  def rental_details(book_name, student_name, date)
    new_rental_details = {
      student_name: student_name,
      date: date
    }
    for book in @books
      if book[:title] == book_name
        book[:rental_details] = new_rental_details
      end
    end
    return book[:rental_details]
  end

end
