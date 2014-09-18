require 'test_helper'

class CatalogControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '.entry', 3
    assert_select 'h3', 'MAC'
    assert_select 'h4', 'Lipstick'
  end

end
