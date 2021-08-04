class DropProductsTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :users do |t|
      t.string :username, null: false
      t.timestamps null: false
    end
  end
end
