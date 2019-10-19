json.extract! price_alert_alarm, :id, :name, :alert_type, :symbol, :current_price, :cap_price, :floor_price, :expected_alert_till_date, :mobile_number, :phone_alert, :message_alert, :created_at, :updated_at
json.url price_alert_alarm_url(price_alert_alarm, format: :json)
