json.extract! alert, :id, :name, :type, :symbol, :current_price, :cap_price, :floor_price, :expected_alert_till_date, :mobile_number, :phone_alert, :message_alert, :created_at, :updated_at
json.url alert_url(alert, format: :json)
