class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses,id:false do |t|
      
      t.string :id,null: false
      t.string :name,null: false
      t.string :user_id,null: false
      t.timestamps null: false
    end
    add_index :courses, :id,unique: true
  end
end
