require 'test_helper'

class PriceAlertsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @price_alert = price_alerts(:one)
  end

  test "should get index" do
    get price_alerts_url
    assert_response :success
  end

  test "should get new" do
    get new_price_alert_url
    assert_response :success
  end

  test "should create price_alert" do
    assert_difference('PriceAlert.count') do
      post price_alerts_url, params: { price_alert: { cap_price: @price_alert.cap_price, current_price: @price_alert.current_price, expected_alert_till_date: @price_alert.expected_alert_till_date, floor_price: @price_alert.floor_price, message_alert: @price_alert.message_alert, mobile_number: @price_alert.mobile_number, name: @price_alert.name, phone_alert: @price_alert.phone_alert, symbol: @price_alert.symbol, type: @price_alert.type } }
    end

    assert_redirected_to price_alert_url(PriceAlert.last)
  end

  test "should show price_alert" do
    get price_alert_url(@price_alert)
    assert_response :success
  end

  test "should get edit" do
    get edit_price_alert_url(@price_alert)
    assert_response :success
  end

  test "should update price_alert" do
    patch price_alert_url(@price_alert), params: { price_alert: { cap_price: @price_alert.cap_price, current_price: @price_alert.current_price, expected_alert_till_date: @price_alert.expected_alert_till_date, floor_price: @price_alert.floor_price, message_alert: @price_alert.message_alert, mobile_number: @price_alert.mobile_number, name: @price_alert.name, phone_alert: @price_alert.phone_alert, symbol: @price_alert.symbol, type: @price_alert.type } }
    assert_redirected_to price_alert_url(@price_alert)
  end

  test "should destroy price_alert" do
    assert_difference('PriceAlert.count', -1) do
      delete price_alert_url(@price_alert)
    end

    assert_redirected_to price_alerts_url
  end
end
