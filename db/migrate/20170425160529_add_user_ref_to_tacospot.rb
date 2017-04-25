class AddUserRefToTacospot < ActiveRecord::Migration[5.0]
  def change
    add_reference :tacospots, :user, foreign_key: true
  end
end
