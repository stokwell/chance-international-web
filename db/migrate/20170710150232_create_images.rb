class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.text :description
      t.string  :file,           null: false
      t.integer :imageable_id,   null: false
      t.string  :imageable_type, null: false
      t.timestamps
    end
  end
end
