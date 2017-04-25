class CreateTacospots < ActiveRecord::Migration[5.0]
  def change
    create_table :tacospots do |t|
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :hours
      t.boolean :cash_only

      t.timestamps
    end
  end
end
