class Photos < ActiveRecord::Migration[6.0]
  def change
    remove_column :photos, :title
  end
end
