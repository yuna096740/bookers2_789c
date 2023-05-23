class CreateGroupUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :group_users do |t|
      t.string :user_id
      t.string :group_id

      t.timestamps
    end
  end
end
