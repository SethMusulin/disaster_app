class AddForeignKeyToItems < ActiveRecord::Migration
  def change
    add_column :items, :person_id, :integer
    add_index :items, :person_id
  end
end