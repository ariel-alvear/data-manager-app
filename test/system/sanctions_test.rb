require "application_system_test_case"

class SanctionsTest < ApplicationSystemTestCase
  setup do
    @sanction = sanctions(:one)
  end

  test "visiting the index" do
    visit sanctions_url
    assert_selector "h1", text: "Sanctions"
  end

  test "creating a Sanction" do
    visit sanctions_url
    click_on "New Sanction"

    fill_in "Description", with: @sanction.description
    fill_in "League race", with: @sanction.league_race_id
    fill_in "Race participant", with: @sanction.race_participant_id
    fill_in "Video url", with: @sanction.video_url
    click_on "Create Sanction"

    assert_text "Sanction was successfully created"
    click_on "Back"
  end

  test "updating a Sanction" do
    visit sanctions_url
    click_on "Edit", match: :first

    fill_in "Description", with: @sanction.description
    fill_in "League race", with: @sanction.league_race_id
    fill_in "Race participant", with: @sanction.race_participant_id
    fill_in "Video url", with: @sanction.video_url
    click_on "Update Sanction"

    assert_text "Sanction was successfully updated"
    click_on "Back"
  end

  test "destroying a Sanction" do
    visit sanctions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sanction was successfully destroyed"
  end
end
