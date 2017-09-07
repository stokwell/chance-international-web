class ChangeProjectsFields < ActiveRecord::Migration[5.0]
  def change
    remove_column :projects, :end
    remove_column :projects, :begin
  end
end
