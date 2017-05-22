class CreateSpaces < ActiveRecord::Migration[5.0]
  def change
    create_table :spaces do |t|
      t.string :name
      t.string :address
      t.integer :size
      t.integer :rating
      t.references :user, foreign_key: true
      t.integer :price_by_day

      t.timestamps
    end
  end
end
