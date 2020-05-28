class ChangeColumnToPasswordDigest < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :password, :password_digest
  end
end
