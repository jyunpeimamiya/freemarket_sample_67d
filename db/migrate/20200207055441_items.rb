class Items < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :detail, null: false
      t.integer :price,null: false
      t.integer :status, null: false, limit: 1
      t.string :mail, null: false, index: true
      t.string :mail_way, null: false, index: true

      t.integer :sold_status
      t.bigint :buyer_id

      t.references :user, foreign_key: true, null: false
      t.references :category, foreign_key: true, null: false
      t.references :brand, foreign_key: true

      t.integer :arrival_date_id,null: false
      t.integer :prefecture_id, null: false
      t.timestamps
    end
  end
end
