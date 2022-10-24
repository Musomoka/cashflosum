require "application_system_test_case"

class EntryTypesTest < ApplicationSystemTestCase
  setup do
    @entry_type = entry_types(:one)
  end

  test "visiting the index" do
    visit entry_types_url
    assert_selector "h1", text: "Entry Types"
  end

  test "creating a Entry type" do
    visit entry_types_url
    click_on "New Entry Type"

    fill_in "Default acc", with: @entry_type.default_acc
    check "Fixed entry type" if @entry_type.fixed_entry_type
    fill_in "Name", with: @entry_type.name
    click_on "Create Entry type"

    assert_text "Entry type was successfully created"
    click_on "Back"
  end

  test "updating a Entry type" do
    visit entry_types_url
    click_on "Edit", match: :first

    fill_in "Default acc", with: @entry_type.default_acc
    check "Fixed entry type" if @entry_type.fixed_entry_type
    fill_in "Name", with: @entry_type.name
    click_on "Update Entry type"

    assert_text "Entry type was successfully updated"
    click_on "Back"
  end

  test "destroying a Entry type" do
    visit entry_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Entry type was successfully destroyed"
  end
end
