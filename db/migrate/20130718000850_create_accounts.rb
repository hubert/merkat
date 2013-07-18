class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :username
      t.integer :balance
      t.timestamps
    end
  end
end
