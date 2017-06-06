class CreateCitiesJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :cities_jobs do |t|
      t.references :city, foreign_key: true
      t.references :job, foreign_key: true
      t.integer :number_openings

      t.timestamps
    end
  end
end
