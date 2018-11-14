class AddImageToFlat < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :image, :string
  end
end
