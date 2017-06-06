class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.text :description
      t.integer :rating
      t.references :job_volunteer, foreign_key: true
      t.integer :type

      t.timestamps
    end
  end
end
