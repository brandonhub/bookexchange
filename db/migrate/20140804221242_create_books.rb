class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :details
      t.float :price
      t.integer :vendor_id
      t.integer :buyer_id
      t.integer :subject_id
      t.integer :condition_id

      t.timestamps
    end
  end
end
