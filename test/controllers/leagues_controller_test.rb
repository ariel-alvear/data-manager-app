require "test_helper"

class LeaguesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @league = leagues(:one)
  end

  test "should get index" do
    get leagues_url
    assert_response :success
  end

  test "should get new" do
    get new_league_url
    assert_response :success
  end

  test "should create league" do
    assert_difference('League.count') do
      post leagues_url, params: { league: { description: @league.description, name: @league.name, score_system_id: @league.score_system_id } }
    end

    assert_redirected_to league_url(League.last)
  end

  test "should show league" do
    get league_url(@league)
    assert_response :success
  end

  test "should get edit" do
    get edit_league_url(@league)
    assert_response :success
  end

  test "should update league" do
    patch league_url(@league), params: { league: { description: @league.description, name: @league.name, score_system_id: @league.score_system_id } }
    assert_redirected_to league_url(@league)
  end

  test "should destroy league" do
    assert_difference('League.count', -1) do
      delete league_url(@league)
    end

    assert_redirected_to leagues_url
  end
end
