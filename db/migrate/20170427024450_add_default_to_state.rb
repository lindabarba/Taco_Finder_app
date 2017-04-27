class AddDefaultToState < ActiveRecord::Migration[5.0]
  def change
    change_column_default :tacospots, :state, "CA"
  end
end
