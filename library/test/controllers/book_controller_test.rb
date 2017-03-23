require 'test_helper'

class LibraryControllerTest < ActionDispatch::IntegrationTest
  test "should get books" do
    Book.create(title: "Tools of Titans")

    get "/books"

    assert_response :success
    assert_select "h1", "Books"
    assert_select "td", "Tools of Titans"
  end

  test "when checking form for new booking" do
    get "bookings/new"

    assert_response :success
    assert_select "form"
  end

  test "when selecting a book" do
    get "/books/:id"

    assert_response :success
    assert_select "prophet"
  end
end
