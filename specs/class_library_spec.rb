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

end
