require 'test_helper'

class CommitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @commity = commities(:one)
  end

  test "should get index" do
    get commities_url
    assert_response :success
  end

  test "should get new" do
    get new_commity_url
    assert_response :success
  end

  test "should create commity" do
    assert_difference('Commity.count') do
      post commities_url, params: { commity: { name: @commity.name } }
    end

    assert_redirected_to commity_url(Commity.last)
  end

  test "should show commity" do
    get commity_url(@commity)
    assert_response :success
  end

  test "should get edit" do
    get edit_commity_url(@commity)
    assert_response :success
  end

  test "should update commity" do
    patch commity_url(@commity), params: { commity: { name: @commity.name } }
    assert_redirected_to commity_url(@commity)
  end

  test "should destroy commity" do
    assert_difference('Commity.count', -1) do
      delete commity_url(@commity)
    end

    assert_redirected_to commities_url
  end
end
