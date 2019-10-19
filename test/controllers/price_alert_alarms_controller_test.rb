require 'test_helper'

class PriceAlertAlarmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @price_alert_alarm = price_alert_alarms(:one)
  end

  test "should get index" do
    get price_alert_alarms_url
    assert_response :success
  end

  test "should get new" do
    get new_price_alert_alarm_url
    assert_response :success
  end

  test "should create price_alert_alarm" do
    assert_difference('PriceAlertAlarm.count') do
      post price_alert_alarms_url, params: { price_alert_alarm: { alert_type: @price_alert_alarm.alert_type, cap_price: @price_alert_alarm.cap_price, current_price: @price_alert_alarm.current_price, expected_alert_till_date: @price_alert_alarm.expected_alert_till_date, floor_price: @price_alert_alarm.floor_price, message_alert: @price_alert_alarm.message_alert, mobile_number: @price_alert_alarm.mobile_number, name: @price_alert_alarm.name, phone_alert: @price_alert_alarm.phone_alert, symbol: @price_alert_alarm.symbol } }
    end

    assert_redirected_to price_alert_alarm_url(PriceAlertAlarm.last)
  end

  test "should show price_alert_alarm" do
    get price_alert_alarm_url(@price_alert_alarm)
    assert_response :success
  end

  test "should get edit" do
    get edit_price_alert_alarm_url(@price_alert_alarm)
    assert_response :success
  end

  test "should update price_alert_alarm" do
    patch price_alert_alarm_url(@price_alert_alarm), params: { price_alert_alarm: { alert_type: @price_alert_alarm.alert_type, cap_price: @price_alert_alarm.cap_price, current_price: @price_alert_alarm.current_price, expected_alert_till_date: @price_alert_alarm.expected_alert_till_date, floor_price: @price_alert_alarm.floor_price, message_alert: @price_alert_alarm.message_alert, mobile_number: @price_alert_alarm.mobile_number, name: @price_alert_alarm.name, phone_alert: @price_alert_alarm.phone_alert, symbol: @price_alert_alarm.symbol } }
    assert_redirected_to price_alert_alarm_url(@price_alert_alarm)
  end

  test "should destroy price_alert_alarm" do
    assert_difference('PriceAlertAlarm.count', -1) do
      delete price_alert_alarm_url(@price_alert_alarm)
    end

    assert_redirected_to price_alert_alarms_url
  end
end
