require "application_system_test_case"

class AlertsTest < ApplicationSystemTestCase
  setup do
    @alert = alerts(:one)
  end

  test "visiting the index" do
    visit alerts_url
    assert_selector "h1", text: "Alerts"
  end

  test "creating a Alert" do
    visit alerts_url
    click_on "New Alert"

    fill_in "Cap price", with: @alert.cap_price
    fill_in "Current price", with: @alert.current_price
    fill_in "Expected alert till date", with: @alert.expected_alert_till_date
    fill_in "Floor price", with: @alert.floor_price
    check "Message alert" if @alert.message_alert
    fill_in "Mobile number", with: @alert.mobile_number
    fill_in "Name", with: @alert.name
    check "Phone alert" if @alert.phone_alert
    fill_in "Symbol", with: @alert.symbol
    fill_in "Type", with: @alert.type
    click_on "Create Alert"

    assert_text "Alert was successfully created"
    click_on "Back"
  end

  test "updating a Alert" do
    visit alerts_url
    click_on "Edit", match: :first

    fill_in "Cap price", with: @alert.cap_price
    fill_in "Current price", with: @alert.current_price
    fill_in "Expected alert till date", with: @alert.expected_alert_till_date
    fill_in "Floor price", with: @alert.floor_price
    check "Message alert" if @alert.message_alert
    fill_in "Mobile number", with: @alert.mobile_number
    fill_in "Name", with: @alert.name
    check "Phone alert" if @alert.phone_alert
    fill_in "Symbol", with: @alert.symbol
    fill_in "Type", with: @alert.type
    click_on "Update Alert"

    assert_text "Alert was successfully updated"
    click_on "Back"
  end

  test "destroying a Alert" do
    visit alerts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Alert was successfully destroyed"
  end
end
