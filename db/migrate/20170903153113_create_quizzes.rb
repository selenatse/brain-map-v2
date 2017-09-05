class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :name
      t.string :course_id
      t.integer :status_type
      t.integer :number_questions

      t.timestamps null: false
    end
  end
end
