class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      # t.string :user_id
      t.column(:user_id, 'varchar(8)',null: false)
      # t.string :name
      t.column(:first_name, 'char(25)')
      t.column(:last_name, 'char(25)')
      t.column(:year, 'char(12)')
      t.column(:degree, 'char(35)')
      # t.integer :year
      # t.string :degree

      t.timestamps null: false
    end
  end
end
