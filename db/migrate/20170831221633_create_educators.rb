class CreateEducators < ActiveRecord::Migration
  def change
    create_table :educators do |t|
      t.string :user_id
      t.string :name
      t.string :role_type

      t.timestamps null: false
    end
  end
end
