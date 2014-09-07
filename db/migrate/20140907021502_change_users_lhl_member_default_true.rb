class ChangeUsersLhlMemberDefaultTrue < ActiveRecord::Migration
  def change
    change_column :users, :lhl_member, :boolean, :default => true
  end
end
