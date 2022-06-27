require "test_helper"

class PointsForPositionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @points_for_position = points_for_positions(:one)
  end

  test "should get index" do
    get points_for_positions_url
    assert_response :success
  end

  test "should get new" do
    get new_points_for_position_url
    assert_response :success
  end

  test "should create points_for_position" do
    assert_difference('PointsForPosition.count') do
      post points_for_positions_url, params: { points_for_position: { name: @points_for_position.name, points: @points_for_position.points, position: @points_for_position.position, score_system_id: @points_for_position.score_system_id } }
    end

    assert_redirected_to points_for_position_url(PointsForPosition.last)
  end

  test "should show points_for_position" do
    get points_for_position_url(@points_for_position)
    assert_response :success
  end

  test "should get edit" do
    get edit_points_for_position_url(@points_for_position)
    assert_response :success
  end

  test "should update points_for_position" do
    patch points_for_position_url(@points_for_position), params: { points_for_position: { name: @points_for_position.name, points: @points_for_position.points, position: @points_for_position.position, score_system_id: @points_for_position.score_system_id } }
    assert_redirected_to points_for_position_url(@points_for_position)
  end

  test "should destroy points_for_position" do
    assert_difference('PointsForPosition.count', -1) do
      delete points_for_position_url(@points_for_position)
    end

    assert_redirected_to points_for_positions_url
  end
end
