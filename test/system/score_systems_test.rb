require "application_system_test_case"

class ScoreSystemsTest < ApplicationSystemTestCase
  setup do
    @score_system = score_systems(:one)
  end

  test "visiting the index" do
    visit score_systems_url
    assert_selector "h1", text: "Score Systems"
  end

  test "creating a Score system" do
    visit score_systems_url
    click_on "New Score System"

    fill_in "Description", with: @score_system.description
    fill_in "Name", with: @score_system.name
    click_on "Create Score system"

    assert_text "Score system was successfully created"
    click_on "Back"
  end

  test "updating a Score system" do
    visit score_systems_url
    click_on "Edit", match: :first

    fill_in "Description", with: @score_system.description
    fill_in "Name", with: @score_system.name
    click_on "Update Score system"

    assert_text "Score system was successfully updated"
    click_on "Back"
  end

  test "destroying a Score system" do
    visit score_systems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Score system was successfully destroyed"
  end
end
