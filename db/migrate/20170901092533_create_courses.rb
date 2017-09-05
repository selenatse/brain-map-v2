class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses,id:false do |t|
      
      # t.string :id,null: false
      t.column(:id, 'char(8)',null:false)
      t.column(:name, 'char(35)')
      # t.string :name,null: false
      t.column(:user_id, 'varchar(8)',null:false)
      # t.string :user_id,null: false
      t.timestamps null: false
    end
    add_index :courses, :id,unique: true
  end
end
