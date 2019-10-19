require "application_system_test_case"

class PriceAlertsTest < ApplicationSystemTestCase
  setup do
    @price_alert = price_alerts(:one)
  end

  test "visiting the index" do
    visit price_alerts_url
    assert_selector "h1", text: "Price Alerts"
  end

  test "creating a Price alert" do
    visit price_alerts_url
    click_on "New Price Alert"

    fill_in "Cap price", with: @price_alert.cap_price
    fill_in "Current price", with: @price_alert.current_price
    fill_in "Expected alert till date", with: @price_alert.expected_alert_till_date
    fill_in "Floor price", with: @price_alert.floor_price
    check "Message alert" if @price_alert.message_alert
    fill_in "Mobile number", with: @price_alert.mobile_number
    fill_in "Name", with: @price_alert.name
    check "Phone alert" if @price_alert.phone_alert
    fill_in "Symbol", with: @price_alert.symbol
    fill_in "Type", with: @price_alert.type
    click_on "Create Price alert"

    assert_text "Price alert was successfully created"
    click_on "Back"
  end

  test "updating a Price alert" do
    visit price_alerts_url
    click_on "Edit", match: :first

    fill_in "Cap price", with: @price_alert.cap_price
    fill_in "Current price", with: @price_alert.current_price
    fill_in "Expected alert till date", with: @price_alert.expected_alert_till_date
    fill_in "Floor price", with: @price_alert.floor_price
    check "Message alert" if @price_alert.message_alert
    fill_in "Mobile number", with: @price_alert.mobile_number
    fill_in "Name", with: @price_alert.name
    check "Phone alert" if @price_alert.phone_alert
    fill_in "Symbol", with: @price_alert.symbol
    fill_in "Type", with: @price_alert.type
    click_on "Update Price alert"

    assert_text "Price alert was successfully updated"
    click_on "Back"
  end

  test "destroying a Price alert" do
    visit price_alerts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Price alert was successfully destroyed"
  end
end
