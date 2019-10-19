json.extract! price_alert, :id, :name, :type, :symbol, :current_price, :cap_price, :floor_price, :expected_alert_till_date, :mobile_number, :phone_alert, :message_alert, :created_at, :updated_at
json.url price_alert_url(price_alert, format: :json)
