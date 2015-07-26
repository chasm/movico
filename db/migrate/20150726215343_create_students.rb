class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name

      t.timestamps null: false
    end

    create_join_table :cohorts, :students
  end
end
