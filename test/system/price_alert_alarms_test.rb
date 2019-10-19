require "application_system_test_case"

class PriceAlertAlarmsTest < ApplicationSystemTestCase
  setup do
    @price_alert_alarm = price_alert_alarms(:one)
  end

  test "visiting the index" do
    visit price_alert_alarms_url
    assert_selector "h1", text: "Price Alert Alarms"
  end

  test "creating a Price alert alarm" do
    visit price_alert_alarms_url
    click_on "New Price Alert Alarm"

    fill_in "Alert type", with: @price_alert_alarm.alert_type
    fill_in "Cap price", with: @price_alert_alarm.cap_price
    fill_in "Current price", with: @price_alert_alarm.current_price
    fill_in "Expected alert till date", with: @price_alert_alarm.expected_alert_till_date
    fill_in "Floor price", with: @price_alert_alarm.floor_price
    check "Message alert" if @price_alert_alarm.message_alert
    fill_in "Mobile number", with: @price_alert_alarm.mobile_number
    fill_in "Name", with: @price_alert_alarm.name
    check "Phone alert" if @price_alert_alarm.phone_alert
    fill_in "Symbol", with: @price_alert_alarm.symbol
    click_on "Create Price alert alarm"

    assert_text "Price alert alarm was successfully created"
    click_on "Back"
  end

  test "updating a Price alert alarm" do
    visit price_alert_alarms_url
    click_on "Edit", match: :first

    fill_in "Alert type", with: @price_alert_alarm.alert_type
    fill_in "Cap price", with: @price_alert_alarm.cap_price
    fill_in "Current price", with: @price_alert_alarm.current_price
    fill_in "Expected alert till date", with: @price_alert_alarm.expected_alert_till_date
    fill_in "Floor price", with: @price_alert_alarm.floor_price
    check "Message alert" if @price_alert_alarm.message_alert
    fill_in "Mobile number", with: @price_alert_alarm.mobile_number
    fill_in "Name", with: @price_alert_alarm.name
    check "Phone alert" if @price_alert_alarm.phone_alert
    fill_in "Symbol", with: @price_alert_alarm.symbol
    click_on "Update Price alert alarm"

    assert_text "Price alert alarm was successfully updated"
    click_on "Back"
  end

  test "destroying a Price alert alarm" do
    visit price_alert_alarms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Price alert alarm was successfully destroyed"
  end
end
