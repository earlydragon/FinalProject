class CreateUsersTable < ActiveRecord::Migration
	 def up
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :gender
    end
  end

  def down
    drop_table :users
  end
end
