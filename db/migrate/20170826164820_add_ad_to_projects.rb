class AddAdToProjects < ActiveRecord::Migration[5.0]
  def change
    add_reference :ads, :project,  foreign_key: true
  end
end
