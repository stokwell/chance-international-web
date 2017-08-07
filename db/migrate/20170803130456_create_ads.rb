class CreateAds < ActiveRecord::Migration[5.0]
  def change
    create_table :ads do |t|
      t.string :title
      t.string :description
      t.text :content

      t.timestamps
    end
  end
end
