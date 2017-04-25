class AddTacospotRefToComment < ActiveRecord::Migration[5.0]
  def change
    add_reference :comments, :comment, foreign_key: true
  end
end
