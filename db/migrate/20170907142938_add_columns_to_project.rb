class AddColumnsToProject < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :project_start, :date
    add_column :projects, :project_end, :date
    add_column :projects, :project_cover, :string
    add_column :projects, :place, :string
  end
end
