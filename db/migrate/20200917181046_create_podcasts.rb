class CreatePodcasts < ActiveRecord::Migration[6.0]
  def change
    create_table :podcasts do |t|
      t.string :name, default: ""
      t.string :description, default: ""
      t.string :picture, default: ""
      t.jsonb :timecodes, default: {}
      t.string :audio, default: ""
      t.string :author, default: ""
      t.timestamps
    end
  end
end
