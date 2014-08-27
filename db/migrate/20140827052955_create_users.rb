class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :uid
      t.string :github_username
      t.boolean :lhl_member
      t.string :token

      t.timestamps
    end
  end
end
