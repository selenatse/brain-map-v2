class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :quiz_id
      t.text :content
      t.integer :learning_outcome_id

      t.timestamps null: false
    end
  end
end
