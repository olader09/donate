class CreateDonations < ActiveRecord::Migration[6.0]
  def change
    create_table :donations do |t|
      t.string :name
      t.integer :sum, null: false, default: 0
      t.string :aim
      t.string :description
      t.string :author
      t.string :type
      t.string :date_close
      t.string :picture
      t.timestamps
    end
  end
end
