class ChangeCashOnlyTypeInTacospots < ActiveRecord::Migration[5.0]
  def change
    change_column :tacospots, :cash_only, :string
  end
end
