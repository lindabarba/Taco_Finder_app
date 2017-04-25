class AddImageToTacospot < ActiveRecord::Migration[5.0]
  def change
    add_column :tacospots, :image_url, :string
  end
end
