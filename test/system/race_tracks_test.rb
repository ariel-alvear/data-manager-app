require "application_system_test_case"

class RaceTracksTest < ApplicationSystemTestCase
  setup do
    @race_track = race_tracks(:one)
  end

  test "visiting the index" do
    visit race_tracks_url
    assert_selector "h1", text: "Race Tracks"
  end

  test "creating a Race track" do
    visit race_tracks_url
    click_on "New Race Track"

    fill_in "Country", with: @race_track.country
    fill_in "Description", with: @race_track.description
    fill_in "Name", with: @race_track.name
    click_on "Create Race track"

    assert_text "Race track was successfully created"
    click_on "Back"
  end

  test "updating a Race track" do
    visit race_tracks_url
    click_on "Edit", match: :first

    fill_in "Country", with: @race_track.country
    fill_in "Description", with: @race_track.description
    fill_in "Name", with: @race_track.name
    click_on "Update Race track"

    assert_text "Race track was successfully updated"
    click_on "Back"
  end

  test "destroying a Race track" do
    visit race_tracks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Race track was successfully destroyed"
  end
end
