class CreateArtKeywords < ActiveRecord::Migration[5.1]
  def change
    create_table :art_keywords do |t|

      t.timestamps
    end
  end
end
