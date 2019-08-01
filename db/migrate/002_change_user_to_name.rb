class ChangeUserToName < ActiveRecord::Migration
    def change
      rename_column :users, :user, :name
    end
  end