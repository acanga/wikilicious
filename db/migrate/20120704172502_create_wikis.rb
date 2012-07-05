class CreateWikis < ActiveRecord::Migration
  def change
    create_table :wikis do |t|
      t.integer :owner_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
