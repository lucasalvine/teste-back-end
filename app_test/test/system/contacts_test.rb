require "application_system_test_case"

class ContactsTest < ApplicationSystemTestCase
  setup do
    @contact = contacts(:one)
  end

  test "visiting the index" do
    visit contacts_url
    assert_selector "h1", text: "Contato"
  end

  test "creating a Contact" do
    visit contacts_url
    click_on "Contato"

    fill_in "Email", with: @contact.email
    fill_in "Name", with: @contact.name
    click_on "Create Contact"

    assert_text "Contact was successfully created"
  end
end