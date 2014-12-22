
#Test is run in the console using bundle exec rake test
require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home #issues GET request to the home action in conroller
    assert_response :success #checks for success
    assert_select "title", "Home | Ruby on Rails Sample App" #checks for specific html tag
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | Ruby on Rails Sample App"
  end
  
  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | Ruby on Rails Sample App"
  end
  
  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact | Ruby on Rails Sample App"
  end

end
