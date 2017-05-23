class AddDetailsToSpace < ActiveRecord::Migration[5.0]
  def change
    add_column :spaces, :nails, :boolean
    add_column :spaces, :drill, :boolean
    add_column :spaces, :plugs, :integer
    add_column :spaces, :windows, :integer
    add_column :spaces, :wc, :integer
  end
end
