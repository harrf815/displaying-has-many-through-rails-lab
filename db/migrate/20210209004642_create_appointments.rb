class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.datetime :appointmnet_datetime
      t.references :patient, foreign_key: true
      t.references :doctor, foreign_key: true

      t.timestamps
    end
  end
end
