class FixingTypo < ActiveRecord::Migration[6.0]
  def change
    rename_column :photos, :caterogy, :category
  end
end
