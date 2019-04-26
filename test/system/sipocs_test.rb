require "application_system_test_case"

class SipocsTest < ApplicationSystemTestCase
  setup do
    @sipoc = sipocs(:one)
  end

  test "visiting the index" do
    visit sipocs_url
    assert_selector "h1", text: "Sipocs"
  end

  test "creating a Sipoc" do
    visit sipocs_url
    click_on "New Sipoc"

    click_on "Create Sipoc"

    assert_text "Sipoc was successfully created"
    click_on "Back"
  end

  test "updating a Sipoc" do
    visit sipocs_url
    click_on "Edit", match: :first

    click_on "Update Sipoc"

    assert_text "Sipoc was successfully updated"
    click_on "Back"
  end

  test "destroying a Sipoc" do
    visit sipocs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sipoc was successfully destroyed"
  end
end
