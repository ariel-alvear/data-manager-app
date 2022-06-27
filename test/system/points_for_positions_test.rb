require "application_system_test_case"

class PointsForPositionsTest < ApplicationSystemTestCase
  setup do
    @points_for_position = points_for_positions(:one)
  end

  test "visiting the index" do
    visit points_for_positions_url
    assert_selector "h1", text: "Points For Positions"
  end

  test "creating a Points for position" do
    visit points_for_positions_url
    click_on "New Points For Position"

    fill_in "Name", with: @points_for_position.name
    fill_in "Points", with: @points_for_position.points
    fill_in "Position", with: @points_for_position.position
    fill_in "Score system", with: @points_for_position.score_system_id
    click_on "Create Points for position"

    assert_text "Points for position was successfully created"
    click_on "Back"
  end

  test "updating a Points for position" do
    visit points_for_positions_url
    click_on "Edit", match: :first

    fill_in "Name", with: @points_for_position.name
    fill_in "Points", with: @points_for_position.points
    fill_in "Position", with: @points_for_position.position
    fill_in "Score system", with: @points_for_position.score_system_id
    click_on "Update Points for position"

    assert_text "Points for position was successfully updated"
    click_on "Back"
  end

  test "destroying a Points for position" do
    visit points_for_positions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Points for position was successfully destroyed"
  end
end
