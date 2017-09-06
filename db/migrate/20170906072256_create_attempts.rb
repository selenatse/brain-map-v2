class CreateAttempts < ActiveRecord::Migration
  def change
    create_table :attempts do |t|
      t.integer :student_id
      t.integer :number_of_attempts
      t.integer :quiz_id

      t.timestamps null: false
    end
  end
end
