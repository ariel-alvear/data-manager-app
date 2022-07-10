require "test_helper"

class LeagueParticipantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @league_participant = league_participants(:one)
  end

  test "should get index" do
    get league_participants_url
    assert_response :success
  end

  test "should get new" do
    get new_league_participant_url
    assert_response :success
  end

  test "should create league_participant" do
    assert_difference('LeagueParticipant.count') do
      post league_participants_url, params: { league_participant: { league_id: @league_participant.league_id, position: @league_participant.position, score: @league_participant.score, status: @league_participant.status, user_id: @league_participant.user_id } }
    end

    assert_redirected_to league_participant_url(LeagueParticipant.last)
  end

  test "should show league_participant" do
    get league_participant_url(@league_participant)
    assert_response :success
  end

  test "should get edit" do
    get edit_league_participant_url(@league_participant)
    assert_response :success
  end

  test "should update league_participant" do
    patch league_participant_url(@league_participant), params: { league_participant: { league_id: @league_participant.league_id, position: @league_participant.position, score: @league_participant.score, status: @league_participant.status, user_id: @league_participant.user_id } }
    assert_redirected_to league_participant_url(@league_participant)
  end

  test "should destroy league_participant" do
    assert_difference('LeagueParticipant.count', -1) do
      delete league_participant_url(@league_participant)
    end

    assert_redirected_to league_participants_url
  end
end
