class CreateEnrolleds < ActiveRecord::Migration
  def change
    create_table :enrolleds do |t|
      t.integer :student_id,null: false
      # t.string :course_id,null: false
      t.column(:course_id, 'char(8)',null:false)
      t.integer :status_type,null:false,default:0
      t.timestamps null: false
    end
  end
end
