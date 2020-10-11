require "application_system_test_case"

class BonusesTest < ApplicationSystemTestCase
  setup do
    @bonuse = bonuses(:one)
  end

  test "visiting the index" do
    visit bonuses_url
    assert_selector "h1", text: "Bonuses"
  end

  test "creating a Bonuse" do
    visit bonuses_url
    click_on "New Bonuse"

    fill_in "Attribute", with: @bonuse.attribute_id
    fill_in "Name", with: @bonuse.name
    fill_in "Parent", with: @bonuse.parent_id
    fill_in "Type", with: @bonuse.type
    fill_in "Value", with: @bonuse.value
    click_on "Create Bonuse"

    assert_text "Bonuse was successfully created"
    click_on "Back"
  end

  test "updating a Bonuse" do
    visit bonuses_url
    click_on "Edit", match: :first

    fill_in "Attribute", with: @bonuse.attribute_id
    fill_in "Name", with: @bonuse.name
    fill_in "Parent", with: @bonuse.parent_id
    fill_in "Type", with: @bonuse.type
    fill_in "Value", with: @bonuse.value
    click_on "Update Bonuse"

    assert_text "Bonuse was successfully updated"
    click_on "Back"
  end

  test "destroying a Bonuse" do
    visit bonuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bonuse was successfully destroyed"
  end
end
