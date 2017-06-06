class CreateJobsVolunteers < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs_volunteers do |t|
      t.references :volunteer, foreign_key: true
      t.references :city_job, foreign_key: true
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
