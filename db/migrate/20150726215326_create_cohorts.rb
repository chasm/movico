class CreateCohorts < ActiveRecord::Migration
  def change
    create_table :cohorts do |t|
      t.string :name
      t.date :starts_on

      t.timestamps null: false
    end
  end
end
