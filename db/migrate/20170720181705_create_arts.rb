class CreateArts < ActiveRecord::Migration[5.1]
  def change
    create_table :arts do |t|
      t.string :name
      t.integer :completed_at
      t.belongs_to :user, foreign_key: true
      t.belongs_to :artist, foreign_key: true
      t.attachment :image
      t.timestamps
    end
  end
end
