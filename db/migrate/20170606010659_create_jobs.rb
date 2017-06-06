class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.references :organization, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
