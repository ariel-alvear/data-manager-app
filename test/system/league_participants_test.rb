require "application_system_test_case"

class LeagueParticipantsTest < ApplicationSystemTestCase
  setup do
    @league_participant = league_participants(:one)
  end

  test "visiting the index" do
    visit league_participants_url
    assert_selector "h1", text: "League Participants"
  end

  test "creating a League participant" do
    visit league_participants_url
    click_on "New League Participant"

    fill_in "League", with: @league_participant.league_id
    fill_in "Position", with: @league_participant.position
    fill_in "Score", with: @league_participant.score
    fill_in "Status", with: @league_participant.status
    fill_in "User", with: @league_participant.user_id
    click_on "Create League participant"

    assert_text "League participant was successfully created"
    click_on "Back"
  end

  test "updating a League participant" do
    visit league_participants_url
    click_on "Edit", match: :first

    fill_in "League", with: @league_participant.league_id
    fill_in "Position", with: @league_participant.position
    fill_in "Score", with: @league_participant.score
    fill_in "Status", with: @league_participant.status
    fill_in "User", with: @league_participant.user_id
    click_on "Update League participant"

    assert_text "League participant was successfully updated"
    click_on "Back"
  end

  test "destroying a League participant" do
    visit league_participants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "League participant was successfully destroyed"
  end
end
