require "test_helper"

class ScoreSystemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @score_system = score_systems(:one)
  end

  test "should get index" do
    get score_systems_url
    assert_response :success
  end

  test "should get new" do
    get new_score_system_url
    assert_response :success
  end

  test "should create score_system" do
    assert_difference('ScoreSystem.count') do
      post score_systems_url, params: { score_system: { description: @score_system.description, name: @score_system.name } }
    end

    assert_redirected_to score_system_url(ScoreSystem.last)
  end

  test "should show score_system" do
    get score_system_url(@score_system)
    assert_response :success
  end

  test "should get edit" do
    get edit_score_system_url(@score_system)
    assert_response :success
  end

  test "should update score_system" do
    patch score_system_url(@score_system), params: { score_system: { description: @score_system.description, name: @score_system.name } }
    assert_redirected_to score_system_url(@score_system)
  end

  test "should destroy score_system" do
    assert_difference('ScoreSystem.count', -1) do
      delete score_system_url(@score_system)
    end

    assert_redirected_to score_systems_url
  end
end
