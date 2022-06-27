require "application_system_test_case"

class LeagueRacesTest < ApplicationSystemTestCase
  setup do
    @league_race = league_races(:one)
  end

  test "visiting the index" do
    visit league_races_url
    assert_selector "h1", text: "League Races"
  end

  test "creating a League race" do
    visit league_races_url
    click_on "New League Race"

    fill_in "Description", with: @league_race.description
    fill_in "League", with: @league_race.league_id
    fill_in "Name", with: @league_race.name
    fill_in "Race track", with: @league_race.race_track_id
    click_on "Create League race"

    assert_text "League race was successfully created"
    click_on "Back"
  end

  test "updating a League race" do
    visit league_races_url
    click_on "Edit", match: :first

    fill_in "Description", with: @league_race.description
    fill_in "League", with: @league_race.league_id
    fill_in "Name", with: @league_race.name
    fill_in "Race track", with: @league_race.race_track_id
    click_on "Update League race"

    assert_text "League race was successfully updated"
    click_on "Back"
  end

  test "destroying a League race" do
    visit league_races_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "League race was successfully destroyed"
  end
end
