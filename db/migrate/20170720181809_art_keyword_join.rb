class ArtKeywordJoin < ActiveRecord::Migration[5.1]
  def change
    create_table :art_keywords, id: false do |t|
      t.belongs_to :art
      t.belongs_to :keyword
      t.timestamps
    end
  end
end
