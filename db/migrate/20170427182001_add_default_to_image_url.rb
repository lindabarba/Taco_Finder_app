class AddDefaultToImageUrl < ActiveRecord::Migration[5.0]
  def change
    change_column_default :tacospots, :image_url, "http://i.imgur.com/NbWIHq0.png"
  end
end
