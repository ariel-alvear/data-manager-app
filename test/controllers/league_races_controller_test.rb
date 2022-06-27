require "test_helper"

class LeagueRacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @league_race = league_races(:one)
  end

  test "should get index" do
    get league_races_url
    assert_response :success
  end

  test "should get new" do
    get new_league_race_url
    assert_response :success
  end

  test "should create league_race" do
    assert_difference('LeagueRace.count') do
      post league_races_url, params: { league_race: { description: @league_race.description, league_id: @league_race.league_id, name: @league_race.name, race_track_id: @league_race.race_track_id } }
    end

    assert_redirected_to league_race_url(LeagueRace.last)
  end

  test "should show league_race" do
    get league_race_url(@league_race)
    assert_response :success
  end

  test "should get edit" do
    get edit_league_race_url(@league_race)
    assert_response :success
  end

  test "should update league_race" do
    patch league_race_url(@league_race), params: { league_race: { description: @league_race.description, league_id: @league_race.league_id, name: @league_race.name, race_track_id: @league_race.race_track_id } }
    assert_redirected_to league_race_url(@league_race)
  end

  test "should destroy league_race" do
    assert_difference('LeagueRace.count', -1) do
      delete league_race_url(@league_race)
    end

    assert_redirected_to league_races_url
  end
end
