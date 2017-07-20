class CreateLeases < ActiveRecord::Migration[5.1]
  def change
    create_table :leases do |t|
      t.decimal :price
      t.date :lease_start_date
      t.date :lease_end_date
      t.integer :art_id
      t.integer :client_id
      t.belongs_to :user, foreign_key: true
      t.belongs_to :lease, foreign_key: true

      t.timestamps
    end
  end
end
