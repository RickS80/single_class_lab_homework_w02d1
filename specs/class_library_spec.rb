require('minitest/autorun')
require('minitest/rg')

require_relative('../class_library.rb')

class TestLibrary < MiniTest::Test
# [
#   {
#     title: "lord_of_the_rings",
#     rental_details: {
#       student_name: "Jeff",
#       date: "01/12/16"
#     }
#   }
# ,
#   {
#     title: "catcher_in_the_rye",
#     rental_details: {
#       student_name: "Salinger",
#       date: "26/11/18"
#     }
#   }
# ]


  def test_initialise_library
    library = Library.new()
  end

  def test_get_books
    library = Library.new()
    books_to_expect = [
          {
            title: "lord_of_the_rings",
            rental_details: {
              student_name: "Jeff",
              date: "01/12/16"
            }
          }]

    our_books = library.books
    assert_equal(books_to_expect, our_books)
  end

  def test_book_info
    library = Library.new()
    book_to_expect =
          {
            title: "lord_of_the_rings",
            rental_details: {
              student_name: "Jeff",
              date: "01/12/16"
            }
          }
    assert_equal(book_to_expect, library.book_info("lord_of_the_rings"))
  end

  def test_return_rental_details
    library = Library.new
    details_to_expect = {
      student_name: "Jeff",
      date: "01/12/16"
    }
    assert_equal(details_to_expect, library.rental_info("lord_of_the_rings"))
  end

  def test_add_new_book
    library = Library.new
    new_book = {
      title: "hitchhikers guide to the galaxy",
      rental_details: {
        student_name: "",
        date: ""}
      }
    updated_library =   [
        {
          title: "lord_of_the_rings",
          rental_details: {
            student_name: "Jeff",
            date: "01/12/16"
          }
        },
        {
          title: "hitchhikers guide to the galaxy",
          rental_details: {
            student_name: "",
            date: ""
          }
        }
      ]
    assert_equal(updated_library, library.add_new_book(new_book))
  end

  def test_change_rental_details
    library = Library.new
    # Act
    result = library.rental_details("lord_of_the_rings", "Brian", "27/11/18")
    rental_details = {
      student_name: "Brian",
      date: "27/11/18"}
    # Assert
    assert_equal(rental_details, result)
  end

end
