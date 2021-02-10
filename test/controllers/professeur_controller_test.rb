require "test_helper"

class ProfesseurControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get professeur_index_url
    assert_response :success
  end
end
