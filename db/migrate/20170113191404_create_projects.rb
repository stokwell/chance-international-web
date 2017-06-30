class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :undertitle
      t.text :body
      t.datetime :begin
      t.datetime :end
      t.timestamps
    end
  end
end
