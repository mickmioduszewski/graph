class CreateUserPrefs < ActiveRecord::Migration
  def change
    create_table :user_prefs do |t|
      t.string  :user_name, :default => "unknown"
      t.string  :comment, :default => "none"
      t.string  :graph_direction, :default => "LR"
      t.integer :graph_root_node_size, :default => 16
      t.integer :graph_root_edge_size, :default => 16
      t.integer :graph_size_reduction, :default => 2
      t.integer :graph_up_depth, :default => 3
      t.integer :graph_down_depth, :default => 3
      t.integer :user_id
      t.timestamps
    end
  end
end
