class CreateRegistrations < ActiveRecord::Migration[5.0]
  def change
    create_table :registrations do |t|
      t.references :volunteer, foreign_key: true
      t.references :city_job, foreign_key: true
      t.boolean :rejected
      t.datetime :registration_date
      t.text :rejection_motive

      t.timestamps
    end
  end
end
