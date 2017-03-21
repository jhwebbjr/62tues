require 'test_helper'

class LibraryControllerTest < ActionDispatch::IntegrationTest
  test "should get books" do
    Book.create(title: "Tools of Titans")

    get "/books"

    assert_response :success
    assert_select "h1", "Books"
    assert_select "td", "Tools of Titans"
  end

end
