class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :title
      t.string :caterogy
      t.integer :votes
      t.string :description
      t.integer :user_id

      t.timestamps
    end
  end
end
