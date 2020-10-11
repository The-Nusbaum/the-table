require 'test_helper'

class BonusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bonuse = bonuses(:one)
  end

  test "should get index" do
    get bonuses_url
    assert_response :success
  end

  test "should get new" do
    get new_bonuse_url
    assert_response :success
  end

  test "should create bonuse" do
    assert_difference('Bonuse.count') do
      post bonuses_url, params: { bonuse: { attribute_id: @bonuse.attribute_id, name: @bonuse.name, parent_id: @bonuse.parent_id, type: @bonuse.type, value: @bonuse.value } }
    end

    assert_redirected_to bonuse_url(Bonuse.last)
  end

  test "should show bonuse" do
    get bonuse_url(@bonuse)
    assert_response :success
  end

  test "should get edit" do
    get edit_bonuse_url(@bonuse)
    assert_response :success
  end

  test "should update bonuse" do
    patch bonuse_url(@bonuse), params: { bonuse: { attribute_id: @bonuse.attribute_id, name: @bonuse.name, parent_id: @bonuse.parent_id, type: @bonuse.type, value: @bonuse.value } }
    assert_redirected_to bonuse_url(@bonuse)
  end

  test "should destroy bonuse" do
    assert_difference('Bonuse.count', -1) do
      delete bonuse_url(@bonuse)
    end

    assert_redirected_to bonuses_url
  end
end
