class AddCollageIdToImages < ActiveRecord::Migration[6.1]
  def change
    add_column :images, :collage_id, :integer
  end
end
