class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :price, :account_id, :null => false
      t.string :photo_url, :title
      t.timestamps
    end
  end
end
