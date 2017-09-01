class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :user_id
      t.string :name
      t.integer :year
      t.string :degree

      t.timestamps null: false
    end
  end
end
