class CreateEdgeTypes < ActiveRecord::Migration
  def change
    create_table :edge_types do |t|
      t.string :name, :default => ""
      t.string :source_type
      t.string :sink_type
      t.text :description, :default => ""

      t.timestamps
    end
    add_index(:edge_types, :name)
  end
end
