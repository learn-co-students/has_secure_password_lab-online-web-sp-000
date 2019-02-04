class ChnageUsernameToNameAndPasswordDigestToPasswordInUsersTable < ActiveRecord::Migration
  def change
    rename_column :users, :username, :name
    rename_column :users, :password_digest, :password
  end
end
