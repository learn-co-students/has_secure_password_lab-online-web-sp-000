class RenameUserPasswordDigestToPassword < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :password_digest, :password 
  end
end
