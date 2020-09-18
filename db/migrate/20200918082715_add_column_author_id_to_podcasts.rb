class AddColumnAuthorIdToPodcasts < ActiveRecord::Migration[6.0]
  def change
    add_column :podcasts, :author_id, :integer
  end
end
