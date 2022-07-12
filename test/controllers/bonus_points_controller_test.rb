require "test_helper"

class BonusPointsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bonus_point = bonus_points(:one)
  end

  test "should get index" do
    get bonus_points_url
    assert_response :success
  end

  test "should get new" do
    get new_bonus_point_url
    assert_response :success
  end

  test "should create bonus_point" do
    assert_difference('BonusPoint.count') do
      post bonus_points_url, params: { bonus_point: { description: @bonus_point.description, league_race_id: @bonus_point.league_race_id, points: @bonus_point.points, race_participant_id: @bonus_point.race_participant_id } }
    end

    assert_redirected_to bonus_point_url(BonusPoint.last)
  end

  test "should show bonus_point" do
    get bonus_point_url(@bonus_point)
    assert_response :success
  end

  test "should get edit" do
    get edit_bonus_point_url(@bonus_point)
    assert_response :success
  end

  test "should update bonus_point" do
    patch bonus_point_url(@bonus_point), params: { bonus_point: { description: @bonus_point.description, league_race_id: @bonus_point.league_race_id, points: @bonus_point.points, race_participant_id: @bonus_point.race_participant_id } }
    assert_redirected_to bonus_point_url(@bonus_point)
  end

  test "should destroy bonus_point" do
    assert_difference('BonusPoint.count', -1) do
      delete bonus_point_url(@bonus_point)
    end

    assert_redirected_to bonus_points_url
  end
end
