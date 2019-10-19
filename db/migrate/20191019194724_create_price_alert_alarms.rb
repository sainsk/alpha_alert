class CreatePriceAlertAlarms < ActiveRecord::Migration[6.0]
  def change
    create_table :price_alert_alarms do |t|
      t.string :name
      t.string :alert_type
      t.string :symbol
      t.float :current_price
      t.float :cap_price
      t.float :floor_price
      t.datetime :expected_alert_till_date
      t.string :mobile_number
      t.boolean :phone_alert
      t.boolean :message_alert

      t.timestamps
    end
  end
end
