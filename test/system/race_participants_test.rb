require "application_system_test_case"

class RaceParticipantsTest < ApplicationSystemTestCase
  setup do
    @race_participant = race_participants(:one)
  end

  test "visiting the index" do
    visit race_participants_url
    assert_selector "h1", text: "Race Participants"
  end

  test "creating a Race participant" do
    visit race_participants_url
    click_on "New Race Participant"

    fill_in "League race", with: @race_participant.league_race_id
    fill_in "Position", with: @race_participant.position
    fill_in "Score", with: @race_participant.score
    fill_in "Status", with: @race_participant.status
    fill_in "User", with: @race_participant.user_id
    click_on "Create Race participant"

    assert_text "Race participant was successfully created"
    click_on "Back"
  end

  test "updating a Race participant" do
    visit race_participants_url
    click_on "Edit", match: :first

    fill_in "League race", with: @race_participant.league_race_id
    fill_in "Position", with: @race_participant.position
    fill_in "Score", with: @race_participant.score
    fill_in "Status", with: @race_participant.status
    fill_in "User", with: @race_participant.user_id
    click_on "Update Race participant"

    assert_text "Race participant was successfully updated"
    click_on "Back"
  end

  test "destroying a Race participant" do
    visit race_participants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Race participant was successfully destroyed"
  end
end
