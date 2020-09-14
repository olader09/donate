class AddColumnAvatarToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :avatar, :string, default: ""
  end
end
