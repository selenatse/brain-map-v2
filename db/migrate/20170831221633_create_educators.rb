class CreateEducators < ActiveRecord::Migration
  def change
    create_table :educators do |t|
      # t.string :user_id
      t.column(:user_id, 'varchar(8)')
      t.column(:first_name,'char(25)')
      t.column(:last_name,'char(25)')
      # t.string :name
      t.column(:role,'char(20)')
      # t.string :role_type

      t.timestamps null: false
    end
  end
end
