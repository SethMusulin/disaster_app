class AddLatlonToItems < ActiveRecord::Migration
  def change
    add_column :items, :lat, :float
    add_column :items, :lon, :float
  end
end
