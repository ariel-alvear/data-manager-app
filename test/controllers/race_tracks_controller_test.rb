require "test_helper"

class RaceTracksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @race_track = race_tracks(:one)
  end

  test "should get index" do
    get race_tracks_url
    assert_response :success
  end

  test "should get new" do
    get new_race_track_url
    assert_response :success
  end

  test "should create race_track" do
    assert_difference('RaceTrack.count') do
      post race_tracks_url, params: { race_track: { country: @race_track.country, description: @race_track.description, name: @race_track.name } }
    end

    assert_redirected_to race_track_url(RaceTrack.last)
  end

  test "should show race_track" do
    get race_track_url(@race_track)
    assert_response :success
  end

  test "should get edit" do
    get edit_race_track_url(@race_track)
    assert_response :success
  end

  test "should update race_track" do
    patch race_track_url(@race_track), params: { race_track: { country: @race_track.country, description: @race_track.description, name: @race_track.name } }
    assert_redirected_to race_track_url(@race_track)
  end

  test "should destroy race_track" do
    assert_difference('RaceTrack.count', -1) do
      delete race_track_url(@race_track)
    end

    assert_redirected_to race_tracks_url
  end
end
