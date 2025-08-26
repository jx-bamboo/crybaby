require "application_system_test_case"

class RunesTest < ApplicationSystemTestCase
  setup do
    @rune = runes(:one)
  end

  test "visiting the index" do
    visit runes_url
    assert_selector "h1", text: "Runes"
  end

  test "should create rune" do
    visit runes_url
    click_on "New rune"

    fill_in "Link", with: @rune.link
    fill_in "Principal", with: @rune.principal
    fill_in "Social", with: @rune.social
    fill_in "Username", with: @rune.username
    click_on "Create Rune"

    assert_text "Rune was successfully created"
    click_on "Back"
  end

  test "should update Rune" do
    visit rune_url(@rune)
    click_on "Edit this rune", match: :first

    fill_in "Link", with: @rune.link
    fill_in "Principal", with: @rune.principal
    fill_in "Social", with: @rune.social
    fill_in "Username", with: @rune.username
    click_on "Update Rune"

    assert_text "Rune was successfully updated"
    click_on "Back"
  end

  test "should destroy Rune" do
    visit rune_url(@rune)
    click_on "Destroy this rune", match: :first

    assert_text "Rune was successfully destroyed"
  end
end
