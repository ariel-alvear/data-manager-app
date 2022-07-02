require "test_helper"

class RaceParticipantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @race_participant = race_participants(:one)
  end

  test "should get index" do
    get race_participants_url
    assert_response :success
  end

  test "should get new" do
    get new_race_participant_url
    assert_response :success
  end

  test "should create race_participant" do
    assert_difference('RaceParticipant.count') do
      post race_participants_url, params: { race_participant: { league_race_id: @race_participant.league_race_id, position: @race_participant.position, score: @race_participant.score, status: @race_participant.status, user_id: @race_participant.user_id } }
    end

    assert_redirected_to race_participant_url(RaceParticipant.last)
  end

  test "should show race_participant" do
    get race_participant_url(@race_participant)
    assert_response :success
  end

  test "should get edit" do
    get edit_race_participant_url(@race_participant)
    assert_response :success
  end

  test "should update race_participant" do
    patch race_participant_url(@race_participant), params: { race_participant: { league_race_id: @race_participant.league_race_id, position: @race_participant.position, score: @race_participant.score, status: @race_participant.status, user_id: @race_participant.user_id } }
    assert_redirected_to race_participant_url(@race_participant)
  end

  test "should destroy race_participant" do
    assert_difference('RaceParticipant.count', -1) do
      delete race_participant_url(@race_participant)
    end

    assert_redirected_to race_participants_url
  end
end
