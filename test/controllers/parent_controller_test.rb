require 'test_helper'

class ParentControllerTest < ActionController::TestCase
  test "should get parentpage" do
    get :parentpage
    assert_response :success
  end

end
