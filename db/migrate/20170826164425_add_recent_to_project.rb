class AddRecentToProject < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :recent, :boolean, default: true
  end
end
