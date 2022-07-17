require "application_system_test_case"

class BonusPointsTest < ApplicationSystemTestCase
  setup do
    @bonus_point = bonus_points(:one)
  end

  test "visiting the index" do
    visit bonus_points_url
    assert_selector "h1", text: "Bonus Points"
  end

  test "creating a Bonus point" do
    visit bonus_points_url
    click_on "New Bonus Point"

    fill_in "Description", with: @bonus_point.description
    fill_in "League race", with: @bonus_point.league_race_id
    fill_in "Points", with: @bonus_point.points
    fill_in "Race participant", with: @bonus_point.race_participant_id
    click_on "Create Bonus point"

    assert_text "Bonus point was successfully created"
    click_on "Back"
  end

  test "updating a Bonus point" do
    visit bonus_points_url
    click_on "Edit", match: :first

    fill_in "Description", with: @bonus_point.description
    fill_in "League race", with: @bonus_point.league_race_id
    fill_in "Points", with: @bonus_point.points
    fill_in "Race participant", with: @bonus_point.race_participant_id
    click_on "Update Bonus point"

    assert_text "Bonus point was successfully updated"
    click_on "Back"
  end

  test "destroying a Bonus point" do
    visit bonus_points_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bonus point was successfully destroyed"
  end
end
