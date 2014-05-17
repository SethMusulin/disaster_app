class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :source
      t.string :category
      t.string :location

      t.timestamps
    end
  end
end
